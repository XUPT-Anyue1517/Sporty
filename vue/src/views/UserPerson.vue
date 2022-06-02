<template>
    <div>
        <el-card style="width: 90%; margin: 20px 70px;border-radius: 20px">
            <el-form ref="form" :model="form" label-width="80px" size="large">
                <el-form-item style="text-align: center" label-width="0">
                    <el-upload
                            class="avatar-uploader"
                            action="http://localhost:8080/files/upload"
                            :show-file-list="false"
                            :on-success="handleAvatarSuccess"
                            style="margin: 5px auto"
                    >
                        <img v-if="form.img" :src="form.img" class="avatar">
                        <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                    </el-upload>
                </el-form-item>
                <el-form-item label="用户名">
                    <el-input v-model="form.name" disabled></el-input>
                </el-form-item>
                <el-form-item label="手机号">
                    <el-input v-model="form.phone"></el-input>
                </el-form-item>
                <el-form-item label="身份证">
                    <el-input v-model="form.idCard"></el-input>
                </el-form-item>
                <el-form-item label="邮箱">
                    <el-input v-model="form.email"></el-input>
                </el-form-item>
                <el-form-item label="地址">
                    <el-input v-model="form.address"></el-input>
                </el-form-item>
                <!--        <el-form-item label="密码">-->
                <!--          <el-input v-model="form.password" show-password></el-input>-->
                <!--        </el-form-item>-->

            </el-form>
            <div style="text-align: center">
                <el-button type="primary" @click="update">保存</el-button>
            </div>
        </el-card>

    </div>
</template>

<script>
    import request from "@/utils/request";
    import router from "@/router";

    export default {
        name: "UserPerson",
        data() {
            return {
                form: {},
                imageUrl: ''
            }
        },
        created() {

            let str = sessionStorage.getItem("user") || "{}"
            if(str === '{}'){
              this.$message.error("请先登录")
              router.push("/userlogin")
            }
            this.form = JSON.parse(str)
        },
        methods: {
            handleAvatarSuccess(res) {

                this.form.img = res.data
                this.$message.success("上传成功")
                this.update()
                // this.imageUrl = `/files/download?name=${res.data}`

            },
            update() {
                request.put("/user", this.form).then(res => {
                    console.log(res)
                    if (res.code === '0') {
                        this.$message({
                            type: "success",
                            message: "更新成功"
                        })
                        sessionStorage.setItem("user", JSON.stringify(this.form))
                        // 触发Layout更新用户信息
                        this.$emit("userInfo")
                    } else {
                        this.$message({
                            type: "error",
                            message: res.msg
                        })
                    }
                })
            }
        }
    }
</script>

<style>
    .avatar-uploader .el-upload {
        border: 1px dashed #d9d9d9;
        border-radius: 6px;
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }

    .avatar-uploader .el-upload:hover {
        border-color: #409EFF;
    }

    .avatar-uploader-icon {
        font-size: 28px;
        color: #8c939d;
        width: 120px;
        height: 120px;
        line-height: 120px;
        text-align: center;
    }

    .avatar {
        width: 178px;
        height: 178px;
        display: block;
    }
</style>
