<template>

<font-awesome-icon  :icon="['fas','circle-check']"/>
  
</template>

<script>
import { library } from "@fortawesome/fontawesome-svg-core";
import { fas} from "@fortawesome/free-solid-svg-icons";
import { fab } from '@fortawesome/free-brands-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons';
library.add(fas,fab,far);

import { ref } from 'vue'
import { StarFilled } from '@element-plus/icons-vue'
export default {
   components: {
    StarFilled,
    
  },
  name: "RefitPurchaseSuccess",
  data(){
    return{
      path:this.$route.path,
  

    }
  },
  setup(){
    
    

    return {
     
    }
  }
}
</script>

<style scoped>

</style>