const doRequest=(id) =>{

        $.get(
            'remove',
             {
                id:id
            },(data)=>{
                let item=eval(data)
                $('#total-money').text(item.totalMoney)
                $('tr#'+id).remove()
            }
        )

}