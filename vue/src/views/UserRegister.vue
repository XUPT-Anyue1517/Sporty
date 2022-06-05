<template>
  <div style="width:100%;height:100vh;overflow: hidden;">


    <div class="videoContainer" >
      <video class="fullscreenVideo" style="height: 100vh;" id="bgVid" playsinline="" autoplay="" muted="" loop="">
        <source src="../assets/img/car/car_video/BMW-M5.mp4" style="width: 100%;height: 100vh;"  type="video/mp4">
      </video>
    </div>


    <div style="width: 100%;text-align: center" >
      <img @click="$router.push('/')"  src="../assets/img/Sporty.png" style="cursor: pointer;width: 630px;height: 20vh;margin: 5px auto" alt="">
    </div>
      <div style="background-color: rgba(43,44,47,0.9);width:480px;margin:0 auto;border-radius: 15px;padding: 10px 15px">
        <div style="font-size:40px;font-weight:bolder;color:#fff;text-align:center;margin: 25px 0">欢迎注册</div>
        <el-form :model="form" ref="form"  size="large" style="text-align: center"  :rules="rules">
          <el-form-item style="width: 95%;margin: 20px auto" prop="name">
            <el-input placeholder="用户名" v-model="form.name" />
          </el-form-item>
          <el-form-item style="width: 95%;margin: 20px auto" prop="email">
            <el-input placeholder="邮箱" v-model="form.email" />
          </el-form-item>

          <el-form-item style="width: 95%;margin: 20px auto" prop="phone">
            <el-input placeholder="手机号码" v-model="form.phone" />
          </el-form-item>

          <el-form-item style="width: 95%;margin: 20px auto" prop="password">
            <el-input placeholder="密码" v-model="form.password" show-password/>
          </el-form-item>

          <el-form-item style="width: 95%;margin: 20px auto" prop="confirm">
            <el-input placeholder="确认密码" v-model="form.confirm" show-password/>
          </el-form-item>
        </el-form>
        <div style="width: 100%; float: right">
          <div style="flex: 1"></div>
          <el-button type="text" style=" float: right ;margin-right: 10px" @click="$router.push('userlogin')">已有账号？去登录></el-button>
        </div>
        <div style="text-align: center">
          <el-button type="primary" style="width: 92%;height:40px;font-size: 19px;margin: 14px 10px 20px 10px"
          @click="register"
          >注册</el-button>
        </div>
      </div>
  </div>
</template>

<script>
import request from "@/utils/request";



export default {
  name:"UserRegister",
  data(){
    return{
      form:{},
      rules:{
        name:[
          {required:true,message:'请输入用户名',trigger:'blur'}
        ],
        email:[
          {required:true,message:'请输入邮箱',trigger:'blur'}
        ],
        phone:[
          {required:true,message:'请输入电话号码',trigger:'blur'}
        ],
        password:[
          {required:true,message:'请输入密码',trigger:'blur'},
        ],
        confirm:[
          {required:true,message:'请确认密码',trigger:'blur'},
        ]
      }
    }
  },
  methods:{
    register(){
      if(this.form.password !== this.form.confirm){
        this.$message.error("两次密码输入不一致")
        return
      }


      this.$refs['form'].validate((valid) => {
        if(valid) {
          request.post("/user/register",this.form).then(res => {
            if(res.code === '0' ){
              this.$message.success("注册成功")
              this.$router.push("/userlogin")  //登录成功之后进行页面跳转
            }else{
              this.$message.error(res.msg)
            }
          })
        }
        })

    },
  }

}
</script>

<style>

.videoContainer{
  position: fixed;
  width: 100%;
  height: 100%;
  overflow: hidden;
  z-index: -100;
}

.videoContainer:before{
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  display: block;
  z-index: -1;
  top: 0;
  left: 0;
  background: rgba(25,29,34,.65);
}
</style>