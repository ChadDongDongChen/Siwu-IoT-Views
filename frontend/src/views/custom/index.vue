<template>
    <iframe
      :src="src"
      frameborder="no"
      style="width: 100%; height: 100%"
      scrolling="auto"
    />
</template>

<script>
import iFrame from "@/components/iFrame/index";
import Cookies from "js-cookie";
import { encrypt, decrypt } from '@/utils/jsencrypt'
export default {
    name: 'custom',
    components: { iFrame },
    props: {},
    data() {
        return {
            src:"",
            loginForm: {
                username: "Test",
                password: "test123"
            },
        }
    },
    computed: {},
    watch: {},
    created() {
        this.autoAuth();
     },
    mounted() { },
    methods: {
        autoAuth() {
            const host = this.$route.query.host;
            const protocol = window.location.protocol;
            console.log('protocol: ', protocol);
            const code = this.$route.query.code;
            const clientId = this.$route.query.clientId;
            const clientSecret = this.$route.query.clientSecret;
            if (clientId && clientSecret) {
                this.showStatus = false;
                this.loginForm.username = clientId;
                this.loginForm.password = encrypt(clientSecret);
                this.loading = true;
                this.$store.dispatch("Login", this.loginForm).then(() => {
                   this.src = `${protocol}//${host}/bigscreen/preview?code=${code}`
                   this.loading = false;
                }).catch(() => {
                    this.loading = false;
                });
            }

        },
    }
}
</script>

<style scoped lang="scss"></style>