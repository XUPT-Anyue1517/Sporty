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
        我的订单
      </h2>
      <div style="width: 100%;margin: 10px auto;">

        <el-table :data="tableData" border stripe style="width: 100%;margin-bottom: 130px">
          <el-empty description="description" />
          <el-table-column fixed  prop="number" label="订单号" width="230" sortable />
          <el-table-column prop="customerId" label="用户ID" width="230"/>
          <el-table-column prop="name" label="商品名称" width="380"/>
          <el-table-column prop="count" label="数量" width="80"/>
          <el-table-column prop="payWay" label="支付方式" width="100"/>
          <el-table-column prop="carStore" label="门店" width="180"/>
          <el-table-column prop="price" label="单价" width="120"/>
          <el-table-column prop="totalPrice" label="总价" width="120"/>
          <el-table-column prop="createTime" label="下单时间" width="180"/>
          <el-table-column fixed="right" label="操作" width="120" >
            <template #default="scope">
              <el-popconfirm title="确认取消?" type="danger" @confirm="handleDelete(scope.row.id)">
                <template #reference>
                  <el-button type="danger">取消订单</el-button>
                </template>
              </el-popconfirm>
            </template>
          </el-table-column>
        </el-table>
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
              tableData:[],
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


              request.get("/order/ByCusId",{
                params:{
                  pageNumber:this.currentPage4,
                  pageSize:this.pageSize4,
                  search:this.search
                }
              }).then(res => {
                console.log(res);
                this.tableData = res.data.records
                this.total = res.data.total
              })
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
            },
            handleDelete(id){
              console.log(id);
              request.delete("/order/" + id).then(res => {
                if(res.code == 0 ){
                  this.$message.success("删除成功")
                }else{
                  this.$message.error(res.msg)
                }
                this.load()
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
