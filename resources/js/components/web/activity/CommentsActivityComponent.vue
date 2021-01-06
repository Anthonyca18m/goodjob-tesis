<template>
    <div class="post-footer__comment border-top mt-3 border-success rounded">
        <h3 class="comment-title text-center"> <span>Comentarios</span></h3>
        <div class="post-footer__comment__detail">
            <div class="comment__item mb-1" v-for="(comment, index) in comments" :key="index">
                <div class="comment__item__content rounded border shadow-sm mb-2 p-3">
                    <div class="comment__item__content__header">
                        <h5>{{ comment.user.name }}</h5>
                        <div class="data">
                            <p><i class="far fa-clock"></i>{{ comment.created_at | mydate_messages}}</p>
                        </div>
                    </div>
                    <p>{{ comment.comment }}</p>
                </div>
            </div>
            <div class="text-center">
                <button class="btn btn-light border" v-show="comments.length >=1" @click="getComments">Ver más comentarios</button>
            </div>
            <div v-if="comments.length <= 0">
                <h4 class="text-center">No se han encontrado comentarios.</h4>
            </div>
        </div>
        <div class="post-footer__comment__form">
            <textarea placeholder="Escribe tu comentario" name="message" v-model="comment"></textarea>
            <button @click="registerComment" class="btn btn-light border text-right pl-5 pr-5">Comentar</button>
        </div>
    </div>
</template>

<script>
export default {
    name: 'comments-activity-component',
    props: ['activity_id'],
    mounted(){
        this.getComments()
    },
    data: () => ({
        comments: [],
        comment: '',
        limit: 5,
    }),
    methods: {
        getComments(){
            this.limit +=2

            axios.get('api/web/comment/activity/list', {
                params: {
                    activity_id : this.activity_id,
                    limit: this.limit
                }
            })
                .then(({data}) => {
                    this.comments = data
                }).catch((err) => {
                    console.log(err)
                })
        },
        registerComment(){
            let form = new FormData()
            form.append('comment', this.comment)
            form.append('user_id', user_logeo.id)
            form.append('activity_id', this.activity_id)

            axios.post('api/web/comment/register', form)
                .then(({data}) => {
                    this.comment = ''
                    this.getComments()
                }).catch((err) => {
                    console.log(err)
                })
        },
    }
}
</script>

<style>

</style>
