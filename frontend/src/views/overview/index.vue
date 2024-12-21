<template>
    <div class='page-container'>
        <div class='top-bar'>
            <el-tabs v-model="activeName" @tab-click="handleClick">
                <el-tab-pane style="font-size: 18px; font-weight: bold; color: #333333;"
                    v-for="(item, index) in ScreenCatalog" :label=item.name :name=JSON.stringify(index) />
            </el-tabs>
            <div class='card_list_container'>
                <div class='add_card'  @click="add">
                    <el-card  shadow="hover">
                    <svg-icon name="创建应用" icon-class='创建应用' style="width: 30%; height: 30%;" />
                </el-card>
                </div>
                <div class="card_list" v-for="(item, index) in cardList" :key="item.id"
                    :style="{ backgroundImage: `url(${getCoverPicture(item.coverPicture) || require('../../assets/images/default.png')})` }">
                    <div class='handel'>
                        <div class="screen-card__hover">
                            <div class="screen-card__hover-box">
                                <div class="preview">
                                    <div class="screen-card__oper-label circle" @click="preview(item)">
                                        <span>访问</span>
                                    </div>
                                    <div class="circle" @click="design(item)">
                                        <span>设计</span>
                                    </div>
                                    <div class="circle" @click="edit(item)">
                                        <span>编辑</span>
                                    </div>
                                    <div class="circle" @click="copy(item)">
                                        <span>复制</span>
                                    </div>
                                    <div class="circle" @click="del(item)">
                                        <span>删除</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='car_footer'>
                        <div class='item1'>
                            <svg-icon name="huititle" icon-class='huititle' style="width: 10%; height: 50%;" />
                            <span>{{ item.name }}</span>
                        </div>
                        <div class='item2'>
                            <svg-icon name="分享" icon-class='分享' style="width: 50%; height: 50%;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class='useDoc'>
            <el-tabs v-model="activeUsed">
                <el-tab-pane label="使用流程" name="first">
                    使用流程
                </el-tab-pane>
            </el-tabs>
        </div>
        <!-- 新增或编辑弹窗 -->
        <EditForm ref="EditForm" :type="pageType" @refreshData="reSearch" />
    </div>
</template>

<script>
import { getFileUrl } from 'data-room-ui/js/utils/file'

import { bigScreenCatalog, page } from '../../api/bigScreen/overview'
import { pageMixins } from 'data-room-ui/js/mixins/page'
import EditForm from './EditForm.vue'
export default {
    name: 'overview',
    mixins: [pageMixins],
    components: { EditForm },
    props: {
        type: {
            type: String,
            default: 'bigScreenCatalog'
        },
        catalogInfo: {
            type: Object,
            default: () => { }
        }
    },
    data() {
        return {
            activeUsed: "first",
            activeName: "0",
            ScreenCatalog: [
                // {
                //     "name": "全部"
                // }
            ],
            palyload: {
                parentCode: null,
                current: 1,
                size: 7,
                searchKey: null,
                type: "bigScreen"
            },
            cardList: [

            ],
            projCat:""
        }
    },
    computed: {
        hint() {
            return this.pageType === 'bigScreen' ? '大屏' : '组件'
        },
        code() {
            return this.catalogInfo?.page?.code
        },
        gridComputed() {
            return this.list.length > 2
        },
        pageType() {
            return this.type === 'bigScreenCatalog' ? 'bigScreen' : 'component'
        }
    },
    watch: {
        code(value) {
            this.current = 1
            this.getPage(this.palyload);
        }
    },
    async created() {
        await this.getBigScreenCatalog();
        this.palyload.parentCode = this.ScreenCatalog[0].code;
        this.getPage(this.palyload);
    },
    mounted() { },
    methods: {
        async getBigScreenCatalog() {
            await bigScreenCatalog().then(res => {
                this.ScreenCatalog = [...this.ScreenCatalog, ...res.data];
            })
        },
        getPage(params) {
            page(params).then(res => {
                this.cardList = res.data.list;
            })
        },
        add() {
            const page = {
                code: '',
                type: 'bigScreen'
            }
            this.$refs.EditForm.init(page, this.projCat)
        },
        edit(screen) {
            this.$refs.EditForm.init(screen, this.projCat)
        },
        preview(screen) {
            console.log('screen: ', screen);
            const { href } = this.$router.resolve({
                path: window.BS_CONFIG?.routers?.previewUrl || '/big-screen/preview', // 这里写的是要跳转的路由地址
                query: {
                    code: screen.code
                }
            })
            window.open(href, '_blank')
        },
        design(screen) {
            const path = window.BS_CONFIG?.routers?.designUrl || '/big-screen/design'
            // const { href } = this.$router.resolve({
            //   path,
            //   query: {
            //     code: screen.code
            //   }
            // })
            // window.open(href, '_self')
            this.$router.push({
                path,
                query: {
                    code: screen.code
                }
            })
        },

        del(screen) {
            console.log('screen: ', screen);
            this.$confirm(`确定删除该${this.hint}？`, '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning',
                customClass: 'bs-el-message-box'
            })
                .then(async () => {
                    this.$dataRoomAxios.post(`/bigScreen/design/delete/${screen.code}`)
                        .then(() => {
                            this.$message({
                                type: 'success',
                                message: '删除成功'
                            })
                            this.getPage(this.palyload);
                        })
                        .catch(() => {
                            this.$message({
                                type: 'error',
                                message: '删除失败!'
                            })
                        })
                })
                .catch()
        },
        copy(screen) {
            this.$confirm(`确定复制该${this.hint}？`, '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning',
                customClass: 'bs-el-message-box'
            })
                .then(async () => {
                    this.$dataRoomAxios.post(`/bigScreen/design/copy/${screen.code}`)
                        .then(() => {
                            this.$message({
                                type: 'success',
                                message: '复制成功'
                            })
                            this.getPage(this.palyload);
                        })
                        .catch(() => {
                            this.$message({
                                type: 'error',
                                message: '复制失败!'
                            })
                        })
                })
                .catch((e) => {
                    console.error(e)
                })
        },
        handleClick(tab, event) {
            if (tab.index === 0) {
                this.palyload.parentCode = null;
            } else {
                this.palyload.parentCode = this.ScreenCatalog[tab.index].code;
            }
            this.getPage(this.palyload);
            this.projCat=this.ScreenCatalog[tab.index];
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
            padding: 1% 1% 0% 1%;

            .add_card {
                width: 23%;
                height: 47%;

            }

            .card_list {
                width: 23%;
                height: 47%;
                background-size: 100% 100%;
                border-radius: 8px;
                border: #ececec 1px solid;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                cursor: pointer;
                border-radius: 8px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: end;

                .car_footer {
                    height: 20%;
                    width: 100%;
                    background-color: rgba(245, 245, 245, 0.377);
                    /* 半透明背景 */
                    backdrop-filter: blur(10px);
                    border-radius: 0px 0px 6px 6px;
                    display: flex;
                    justify-content: space-between;

                    .item1 {
                        width: 80%;
                        height: 100%;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        font-size: 14px;
                        font-weight: 700;
                        letter-spacing: 1.1px;
                        color: #f7f7f7;
                        line-height: 20px;
                        margin-left: 4px;
                        overflow: hidden;
                    }

                    .item1 span {
                        display: block;
                        width: 100%;
                        white-space: nowrap;
                        text-overflow: ellipsis;
                        overflow: hidden;
                        margin-left: 4px;
                    }




                    .item2 {
                        width: 15%;
                        height: 100%;
                        display: flex;
                        justify-content: space-evenly;
                        align-items: center;
                    }


                }

                .handel {
                    height: 80%;
                    width: 100%;
                    background-color: rgba(28, 78, 243, 0.075);
                    backdrop-filter: blur(0px);
                    border-radius: 6px 6px 0px 0px;

                    &:hover {
                        .screen-card__hover {
                            height: 180px;
                        }
                    }

                    .screen-card__hover {
                        border-radius: 6px 6px 0px 0px;
                        position: absolute;
                        z-index: 999;
                        top: 0;
                        right: 0;
                        left: 0;
                        display: flex;
                        overflow: hidden;
                        align-items: center;
                        justify-content: center;
                        height: 0;
                        transition: height 0.4s;
                        background: #00000099;

                        .screen-card__hover-box {
                            position: absolute;
                            width: 100%;
                            height: 100%;
                            background: #00000080;
                            display: flex;
                            overflow: hidden;
                            align-items: center;
                            justify-content: center;
                        }

                        .preview {
                            display: flex;
                            flex-direction: row;
                            justify-content: space-evenly;
                            width: 100%;
                            cursor: pointer;
                            color: var(--bs-el-color-primary);

                            .circle {
                                position: relative;
                                display: flex;
                                align-items: center;
                                justify-content: center;
                                width: 40px;
                                height: 40px;
                                border: 1px solid var(--bs-el-color-primary);
                                border-radius: 50%;

                                &:hover {
                                    color: #fff;
                                    background: var(--bs-el-color-primary);
                                }

                                span {
                                    font-size: 12px;
                                }
                            }
                        }
                    }
                }


            }
        }
    }

    .useDoc {
        margin-top: 0.5%;
        width: 100%;
        height: 33%;
        background-color: #ffffff;
        padding: 0% 1% 1% 1%;

        .title {
            font-size: 18px;
            font-weight: bold;
            color: #333333;
            line-height: 40px;
            border-bottom: #e4e7ed 1px solid;
        }
    }

    ::v-deep .el-card__body {
        display: flex;
        justify-content: center;
        align-items: center;
    }
}
</style>