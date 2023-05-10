<template>
    <div>
      <div style="background-color: #343536;height: 300px;clear: both">
          <div style="float: left;margin-left: 200px;padding-top: 30px;width: 210px;text-align: center">
            <img :src=this.userImg alt="" style="border-radius: 50%;height: 200px;">
            <el-button type="primary"  @click="edit" style="margin-top: 20px">编辑资料</el-button>
          </div>

          <div style="float: right;text-align: left;width: 70%;padding-top: 50px;color: #fff">
            <h1>{{this.form.name}}</h1>
            <h6 style="color: #8c939d;padding-left: 10px">{{this.form.email}}</h6>
            <h6 style="color: #8c939d;padding-left: 10px">{{this.form.phone}}</h6>

          </div>

      </div>


      <div style="width: 80%;height: 200px;margin: 10px auto">
        <el-row :gutter="12">
          <el-col :span="8">
            <el-card shadow="hover" class="user_msg" @click="OpenOrders(this.form.id)"> 我的订单
              <br> {{ this.orderNum }}
            </el-card>
          </el-col>
          <el-col :span="8">
            <el-card shadow="hover" class="user_msg" @click="OpenBlogs(this.form.id)"> 我的博客
              <br> {{ this.blogNum }}
            </el-card>
          </el-col>
          <el-col :span="8">
            <el-card shadow="hover" class="user_msg"> 我的收藏
              <br> 23
            </el-card>
          </el-col>
        </el-row>
      </div>


      <el-dialog v-model="dialogVisible"
                 title="新增数据"
                 width="30%"
      >
        <el-form ref="form" :model="form" label-width="80px" size="large">
          <el-form-item style="text-align: center" label-width="0">
            <el-upload
                class="avatar-uploader"
                action="http://localhost:8080/files/upload"
                :show-file-list="false"
                :on-success="handleAvatarSuccess"
                style="margin: 5px auto;width: 50%;"
            >
              <img v-if="form.img" :src="form.img" class="" style="width: 100%;">
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
        <template #footer>
          <div style="text-align: center">
            <el-button type="primary" @click="update">保存</el-button>
          </div>
        </template>
      </el-dialog>


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
                imageUrl: '',
              dialogVisible: false,
              userImg:'',
              orderNum:0,
              blogNum:0,
            }
        },
        created() {

            let str = sessionStorage.getItem("user") || "{}"
            if(str === '{}'){
              this.$message.error("请先登录")
              router.push("/userlogin")
            }
            this.form = JSON.parse(str)
            this.userImg = this.form.img
          this.load()
        },
        methods: {
            load(){
              request.get("/order/ByCusId",{
                params:{
                  pageNumber:this.currentPage4,
                  pageSize:this.pageSize4,
                  search:this.form.id
                }
              }).then(res => {
                console.log(res);
                this.orderNum = res.data.records.length
              })
              request.get("/refitcase/ByCusId",{
                params:{
                  pageNum:this.currentPage4,
                  pageSize:this.pageSize4,
                  search:this.form.id
                }
              }).then(res => {
                console.log(res);
                this.blogNum = res.data.records.length
              })
            },
          OpenOrders(cusId){
            this.$router.push({
              path: '/userorders',
              query: {
                search: cusId
              }
            })
          },
          OpenBlogs(cusId){
            this.$router.push({
              path: '/userblogs',
              query: {
                search: cusId
              }
            })
          },
            edit(){
              this.dialogVisible = true
            },
            handleAvatarSuccess(res) {

                this.form.img = res.data
                this.$message.success("上传成功")
                // this.update()
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
                      this.userImg = this.form.img
                    } else {
                        this.$message({
                            type: "error",
                            message: res.msg
                        })
                    }
                })

              this.dialogVisible = false
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

    .user_msg{
      margin-top: 20px;
      text-align: center;
      cursor: pointer;
      font-size: 30px;
      font-weight: bolder;
      border: 3px #000 solid;
      transition: .3s;
    }
    .user_msg:hover{
      transform: translateY(-7px);

    }
</style>
