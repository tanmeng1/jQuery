<style>
    #test {
        text-align: center;
        margin-top: 50px;
        font-size: 30px;
        font-weight: bold;
    }
    #list {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 50px;
        font-size: 20px;
    }
    .title {
        font-weight: bold;
        width: 500px;
        background: #ffffff;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .list-item {
        width: 100%;
        display: flex;
        justify-content: space-between;
        padding: 10px;
        margin: 5px;
        border-bottom: 1px solid #ccc;
        background: #f9f9f9;
        border-radius: 5px;
    }
</style>

<h2 id="test">Blog Management System</h2>
<div id="list">
    <div class="list-item">
        <span class="title">ID</span>
        <span class="title">userId</span>
        <span class="title">body</span>
        <span class="title">title</span>
    </div>
</div>

<script src="jquery-3.6.0.min.js"></script>
<script>
    $.ajax({
        url:'http://jsonplaceholder.typicode.com/posts',
        type:'GET',
        success:function(response) {
            console.log(response);
            let list = response;
            list.forEach(item => {
                console.log(item)
                $('#list').append("\<div class=\"list-item\"\>\<span class=\"title\">" + item.id +
                    "\</span>\<span class=\"title\">" + item.userId + "\</span>\<span class=\"title\">" + item.body +
                    "\</span>\<span class=\"title'>\<h1\>" + item.title + "\<\/\h1\>");
            })
        },
        error:function(xhr,status,error) {
            console.log(error);
        }

    });

</script>

