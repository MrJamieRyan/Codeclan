import Vue from 'vue';

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: "#app",
    data: {
      items: [
        {name:"Egg", isPurchased: false}, 
        {name:"Bacon", isPurchased: false}, 
        {name:"Rolls", isPurchased: true} 
    ],
      newItem: { name: "", isPurchased: false }
    },
    methods: {
      saveNewItem: function() {
        this.items.push(this.newItem)
        this.newItem = { name: "", isPurchased:false};
      },
      purchaseItem: function(index){
      this.items[index].isPurchased = true; 
      }
      }
    
  });
});
