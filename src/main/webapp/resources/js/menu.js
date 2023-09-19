/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */

function deleteMenu(endpoint, id, btn) {
    let r = document.getElementById(`row${id}`);
    let load = document.getElementById(`load${id}`);
    load.style.display = "block";
    btn.style.display = "none";
    fetch(endpoint, {
        method: 'delete'
    }).then(function (res) {
        if (res.status !== 204)
            alert("Something wrong!!!");
        load.style.display = "none";
        r.style.display = "none";
    }).catch(function (err) {
        console.error(err);
        btn.style.display = "block";
        load.style.display = "none";
    });
}


function loadMenus(endpoint) {
    fetch(endpoint).then(function(res) {
        return res.json();
    }).then(function(data) {
        console.info(data);
        let d = document.getElementById("myMenu");
        let msg = "";
        for (let i = 0; i < data.length; i++)
            msg += `<tr>
                    <td><img src="${data[i].image}" width="120" /></td>
                    <td>${data[i].name}</td>
                    <td>${data[i].price} VND</td>
                    <td>
                       
                        <a type="button" href="/QLNHTC/admin/updateMenu/${data[i].id}" class="btn btn-success" >Cập nhật</a>
                    </td>
                    <td>
                        <div class="spinner-border text-info" style="display:none" id="load${data[i].id}"></div>
                        <button class="btn btn-danger" onclick="showConfirmModalDialog('${endpoint + "/" + data[i].id}', ${data[i].id}, this)">Xoá</button>
                    </td>
                </tr>`
        
        d.innerHTML = msg;
        let d2 = document.getElementById("myLoading");
        d2.style.display = "none"
    })
}

function viewUpdate(id){
    fetch(`/QLNHTC/api/updateMenu/${id}`, {
        method: "post"
    }).then(function (res) {
        return res.json()
    }).then(function (data) {
        document.getElementById("appetizer").value=data.appetizer;
        document.getElementById("maincourse1").value=data.maincourse1;
        document.getElementById("maincourse2").value=data.maincourse2;
        document.getElementById("maincourse3").value=data.maincourse3;
        document.getElementById("dessert").value=data.dessert;
        document.getElementById("drinks").value=data.drinks;
        document.getElementById("price").value=data.price;
        document.getElementById("name").value=data.name;
        document.getElementById("image").value=data.image;
        
    })
}
function showConfirmModalDialog(endpoint, id, btn){
    let confirm = window.confirm("Bạn có chắc chắn muốn xóa mục này?");
    if(confirm){
        deleteMenu(endpoint, id, btn);
        alert("Đã xóa!");
    }
}
