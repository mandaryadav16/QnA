<!--Sidebar Column Start -->
<div class="col-md-5">
    <!--Sidebar for Browse By Category -->
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h3>Browse By Category</h3>
            </div>
            <ul class="list-group" style="margin-top:30px;">
                <?php 
                $q="select * from questions_cat";
                $result=mysqli_query($con,$q);
                while($row=mysqli_fetch_array($result)){
                ?>
                <a href="browse.php?cat=<?php echo $row['cat_id']; ?>" style="color:black;">
                    <li class="list-group-item" style="border:none;">
                        <?php echo $row['cat']; ?>
                    </li>
                </a>
                <?php } ?>
            </ul>
        </div>
    </div>
    <!--Sidebar for Browse By Category Ends-->

    
</div> <!--Sidebar Column Close -->
