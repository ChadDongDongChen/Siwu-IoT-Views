<template>
    <div class='page-container'>
        <div class='top-bar'>
            <el-tabs v-model="activeName" @tab-click="handleClick">
                <el-tab-pane v-for="(item, index) in ScreenCatalog" :label=item.name :name=JSON.stringify(index) />
            </el-tabs>
            <div class='card_list_container'>
                <div class='add_card'>
                    <svg-icon name="add" icon-class='add' style="width: 50%; height: 50%;" />
                </div>
                <div class="card_list" v-for="(item, index) in cardList" :key="item.id"
                    :style="{ backgroundImage: `url(${getCoverPicture(item.coverPicture)})` }">
                    <div class='handel'></div>
                    <div class='card_name'>{{ item.name }}</div>
                </div>
            </div>
        </div>
        <div class='content'>
            
        </div>
    </div>
</template>

<script>
import { getFileUrl } from 'data-room-ui/js/utils/file'

import { bigScreenCatalog, page } from '../../api/bigScreen/overview'
export default {
    name: 'overview',
    components: {},
    props: {},
    data() {
        return {
            activeName: "0",
            ScreenCatalog: [
                {
                    "name": "全部"
                }
            ],
            palyload: {
                parentCode: null,
                current: 1,
                size: 7,
                searchKey: null,
                type: "bigScreen"
            },
            cardList: [
                
            ]
        }
    },
    computed: {},
    watch: {},
    created() {
        this.getBigScreenCatalog();
        this.getPage(this.palyload);
    },
    mounted() { },
    methods: {
        getBigScreenCatalog() {
            bigScreenCatalog().then(res => {
                this.ScreenCatalog = [...this.ScreenCatalog, ...res.data];
            })
        },
        getPage(params) {
            page(params).then(res => {
                this.cardList = res.data.list;
            })
        },
        handleClick(tab, event) {
            if (tab.index === 0) {
                this.palyload.parentCode = null;
            } else {
                this.palyload.parentCode = this.ScreenCatalog[tab.index].code;
            }
            this.getPage(this.palyload);
            console.log(tab.index);
        },
        getCoverPicture(url) {
            return getFileUrl(url)
        }
    }
}
</script>

<style scoped lang="scss">
.page-container {
    width: 100%;
    height: calc(100vh - 120px);

    .top-bar {
        width: 100%;
        height: 65%;
        background-color: #fff;
        padding: 1% 1% 0% 1%;

        .card_list_container {
            height: 85%;
            display: flex;
            flex-wrap: wrap;
            justify-content: left;
            gap: 20px 40px;
            overflow: hidden;

            .add_card {
                width: 23%;
                height: 47%;
                display: flex;
                justify-content: center;
                align-items: center;
                border: #ececec 1px solid;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                cursor: pointer;
                border-radius: 12px;
            }

            .card_list {
                width: 23%;
                height: 47%;
                background-size: 100% 100%;
                border-radius: 12px;
                border: #ececec 1px solid;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                cursor: pointer;
                border-radius: 12px;
                display: flex;
                justify-content: center;
                align-items: end;

                .card_name {
                    width: 100%;
                    height: 20%;
                    background-color: rgba(245, 245, 245, 0.192);
                    /* 半透明背景 */
                    backdrop-filter: blur(10px);
                    /* 磨砂效果 */
                    display: flex;
                    justify-content: left;
                    align-items: center;
                    font-size: 16px;
                    color: #ffffff;
                    /* 默认文字颜色 */
                    font-weight: bold;
                    letter-spacing: 1px;
                    padding: 0px 0px 0px 10px;
                    border-radius: 0px 0px 12px 12px;
                }

                .handel {}
            }
        }
    }

    .content {
        margin-top: 0.5%;
        width: 100%;
        height: 33%;
        background-color: #f5f5f5;
    }
}
</style>