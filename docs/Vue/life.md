# vue 的生命周期
## beforeCreate
在实例初始化之后，数据观测 (data observer) 和 event/watcher 事件配置之前被调⽤
## created
在实例创建完成后被⽴即调⽤。在这⼀步，实例已完成以下的配置：数据观测(data observer)，property 和⽅法的运算，watch/event 事件回调。然⽽，挂载阶段还没开始，$el property ⽬前尚不可⽤
## beforeMount
在挂载开始之前被调⽤：相关的 render 函数⾸次被调⽤
## mounted
实例被挂载后调⽤，这时 Vue.createApp({}).mount() 被新创建的 vm.$el 替换了。如果根实例挂载到了⼀个⽂档内的元素上，当 mounted 被调⽤时 vm.$el 也
在⽂档内。
## beforeUpdate
数据更新时调⽤，发⽣在虚拟 DOM 打补丁之前
## updated
由于数据更改导致的虚拟 DOM 重新渲染和打补丁，在这之后会调⽤该钩⼦
## beforeUnmount
在卸载组件实例之前调⽤。在这个阶段，实例仍然是完全正常的
## unmounted
卸载组件实例后调⽤。调⽤此钩⼦时，组件实例的所有指令都被解除绑定，所有事件侦听器都被移除，所有⼦组件实例被卸载
![alt 属性文本](/img/vuelife.png)
