var crud_app = new Vue({
	el: '#crud_app',
	data: {
		showAddHotDog: false,
		showEditHotDog: false,
		showDeleteHotDog: false,
		hotdogs: [],
		newHotDog: {name: "", bun: "", sausage: "", vegetables: "", sauce: ""},
		currentHotDog: {}
	},
	mounted: function(){
		this.getAllHotDogs();
	},
	methods: {
		getAllHotDogs(){
			axios.get("https://crud-hot-dog-tz.000webhostapp.com/process.php?action=read").then(function(response){
				if(response.data.error){
					crud_app.errorMsg = response.data.message;
				}
				else{
					crud_app.hotdogs = response.data.hotdogs;
				}
			});
		},

		addHotDog(){
			var formData = crud_app.toFormData(crud_app.newHotDog);
			axios.post("https://crud-hot-dog-tz.000webhostapp.com/process.php?action=create", formData).then(function(response){
				crud_app.newHotDog = {name: "",bun: "",sausage: "",vegetables: "",sauce: ""};
				if(response.data.error){
					crud_app.errorMsg = response.data.message;
				}
				else{
					crud_app.successMsg = response.data.message;
					crud_app.getAllHotDogs();
				}
			});
		},


		updateHotDog(){
			var formData = crud_app.toFormData(crud_app.currentHotDog);
			axios.post("https://crud-hot-dog-tz.000webhostapp.com/process.php?action=update", formData).then(function(response){
				crud_app.currentHotDog = {};
				if(response.data.error){
					crud_app.errorMsg = response.data.message;
				}
				else{
					crud_app.successMsg = response.data.message;
					crud_app.getAllHotDogs();
				}
			});
		},
		deleteHotDog(){
			var formData = crud_app.toFormData(crud_app.currentHotDog);
			axios.post("https://crud-hot-dog-tz.000webhostapp.com/process.php?action=delete", formData).then(function(response){
				crud_app.currentHotDog = {};
				if(response.data.error){
					crud_app.errorMsg = response.data.message;
				}
				else{
					crud_app.successMsg = response.data.message;
					crud_app.getAllHotDogs();
				}
			});
		},

		toFormData(obj){
			var fd = new FormData();
			for(var i in obj){
				fd.append(i,obj[i]);
			}
			return fd;
		},
		selectHotDog(hotdog){
			crud_app.currentHotDog = hotdog;
		}
	}

});