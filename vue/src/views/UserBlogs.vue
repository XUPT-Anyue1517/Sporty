<template>
    <div style="width: 100%;">
      <div style="background-color: #343536;width: 100%;height: 300px;clear: both">
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

      <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
        我的博客
      </h2>
      <div style="width: 100%;margin: 10px auto;">

        <el-row :gutter="24" style="margin:0 130px">
          <el-col :span="6" v-for="item in showCar" :key="item">
            <el-card class="OwnBlog" style="width:290px;margin:20px 0;cursor: pointer" @click="handleOpen(item.title)">
              <!--          <img :src="item" class="image" style="width:250px;height:190px"/>-->
              <div style="overflow: hidden;width:250px;height:190px" >
                <el-image  :src="item.img" :fit="fill" class="image" style="width: 100%" />
              </div>

              <div style="padding: 14px">
                <span>{{ item.title }}</span>

              </div>
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
              showCar:[],
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

              this.search = this.$route.query.search


              request.get("/refitcase/ByCusId",{
                params:{
                  pageNumber:this.currentPage4,
                  pageSize:this.pageSize4,
                  search:this.search
                }
              }).then(res => {
                console.log(res);
                this.showCar = res.data.records
                this.total = res.data.total
              })
            },
            handleOpen(title){
              // this.$router.push({
              //   path: '/refitcaseessay',
              //   query: {
              //     search: title
              //   }
              // })
              window.open("http://localhost:9876/refitcaseessay?search=" + title)
            },
            edit(){
              this.dialogVisible = true
            },
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
              this.dialogVisible = false
            }
        }
    }
</script>

<style>
    .OwnBlog{
      transition: .3s;
    }
    .OwnBlog:hover{
      transform: translateY(-10px);
    }
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
