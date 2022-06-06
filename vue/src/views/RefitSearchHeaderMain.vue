<template>
  <div>

    <div>
      <el-row justify="center">
        <el-row :gutter="20"  style="background-color: #343536;color:#fff;width: 100%;clear: both;
        margin: 0 auto;float: left;padding: 20px 50px 30px">
          <el-col :span="8">
            <h3 style="border-bottom: 5px #ec1111 solid">精品轮毂</h3>
            <div style="width: 100%;height: 210px;float: left">
              <img src="../assets/img/refit/refit_logo/LG/B17.jpg"
                   class="header_refit_logo" alt="">
              <img src="../assets/img/refit/refit_logo/LG/B18.jpg"
                   class="header_refit_logo" alt="">
              <img src="../assets/img/refit/refit_logo/LG/B2.jpg"
                   class="header_refit_logo" alt="">
              <img src="../assets/img/refit/refit_logo/LG/B4.jpg"
                   class="header_refit_logo" alt="">


            </div>
          </el-col>
          <el-col :span="8">
            <h3 style="border-bottom: 5px #ec1111 solid">刹车系统</h3>

              <div style="width: 100%;height: 210px;float: left">
                <img src="../assets/img/refit/refit_logo/SC/20220606-11-14-B1.jpg"
                     class="header_refit_logo" alt="">
                <img src="../assets/img/refit/refit_logo/SC/20220606-11-14-B2.jpg"
                     class="header_refit_logo" alt="">
                <img src="../assets/img/refit/refit_logo/SC/20220606-11-14-B3.jpg"
                     class="header_refit_logo" alt="">
                <img src="../assets/img/refit/refit_logo/SC/20220606-11-14-B7.jpg"
                     class="header_refit_logo" alt="">

            </div>
          </el-col>
          <el-col :span="8">
            <h3 style="border-bottom: 5px #ec1111 solid">避震悬挂</h3>
            <div style="width: 100%;height: 210px;float: left">
              <img src="../assets/img/refit/refit_logo/BZ/20220606-11-15-B1.jpg"
                   class="header_refit_logo" alt="">
              <img src="../assets/img/refit/refit_logo/BZ/20220606-11-15-B2.jpg"
                   class="header_refit_logo" alt="">
              <img src="../assets/img/refit/refit_logo/BZ/20220606-11-15-B3.jpg"
                   class="header_refit_logo" alt="">
              <img src="../assets/img/refit/refit_logo/BZ/20220606-11-15-B4.jpg"
                   class="header_refit_logo" alt="">

            </div>
          </el-col>

        </el-row>
      </el-row>
    </div>
  </div>
</template>

<script>

export default {
  name: "RefitSearchHeaderMain",
}
</script>

<style scoped>
.header_refit_logo{
  width: 47.5%;
  margin: 5px;
  border-radius: 6px;
}

.el-carousel__item h3 {
  color: #475669;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
  text-align: center;
}
.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}


.el-row {
  margin-bottom: 20px;
}
.el-row:last-child {
  margin-bottom: 0;
}
.el-col {
  border-radius: 4px;
}

.grid-content {
  border-radius: 4px;
  min-height: 36px;
}


.demo-image .block {
  padding: 30px 0;
  text-align: center;
  border-right: solid 1px var(--el-border-color);
  display: inline-block;
  width: 20%;
  box-sizing: border-box;
  vertical-align: top;
}
.demo-image .block:last-child {
  border-right: none;
}
.demo-image .demonstration {
  display: block;
  color: var(--el-text-color-secondary);
  font-size: 14px;
  margin-bottom: 20px;
}

.el-row {
  margin-bottom: 20px;
}
.el-row:last-child {
  margin-bottom: 0;
}
.el-col {
  border-radius: 4px;
}

.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
</style>




