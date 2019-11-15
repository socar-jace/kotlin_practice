<template>
  <div class="socar">
    <img src="../assets/socar-logo.png">
    <h1>{{ msg1 }}</h1>
    <h2>{{ msg2 }}</h2>
    <div class="members">
      <table>
        <tr v-for="member in members" :key="member.id">
          <td v-if="member.nickname == 'Dorma'"><b>팀장</b></td>
          <td v-else></td>
          <td>{{member.name}}</td>
          <td>{{member.nickname}}</td>
        </tr>
      </table>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'socar',
  data () {
    return {
      msg1: '쏘카 개발본부 TD',
      msg2: '팀원을 소개합니다.',
      members: []
    }
  },
  created () {
    axios.get('http://192.168.99.102:30002/td/members')
      .then(response => {
        this.members = response.data
      })
  }
}
</script>
<style scoped>
h1 {
  font-weight: normal;
}
.class {
  text-align: center;
}
.members {
  display: inline-block;
}
table {
  border: 1px solid;
}
table td {
  padding: 10px;
  border: 1px;
}
img {
  width: 300px;
}
</style>
