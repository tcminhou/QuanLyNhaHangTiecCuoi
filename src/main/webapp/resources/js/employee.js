/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */


function deleteEmployee(id)
{
    fetch(`/QLNHTC/admin/employee/${id}`, {
        method: "delete"
    }).then(function () {
        location.reload();
    })
}

function upgradeEmployee(id){
    fetch(`/QLNHTC/api/updateEmploy/${id}`, {
        method: "post"
    }).then(function (res) {
        return res.json()
    }).then(function (data) {
        document.setElementById("userrole","ROLE_ADMIN");
        
    })
}
function showConfirmModalDialog(id){
    let confirm = window.confirm("Bạn có chắc chắn muốn xóa mục này?");
    if(confirm){
        deleteEmployee(id);
        alert("Đã xóa!");
    }
}