
    <?php include('partials-front/menu.php'); ?>

    <!-- device sEARCH Section Starts Here -->
    <section class="device-search text-center">
        <div class="container">
            <?php 

                //Get the Search Keyword
                // $search = $_POST['search'];
                $search = mysqli_real_escape_string($conn, $_POST['search']);
            
            ?>


            <h2>Laptops on Your Search <a href="#" class="text-white">"<?php echo $search; ?>"</a></h2>

        </div>
    </section>
    <!-- device sEARCH Section Ends Here -->



    <!-- Device MEnu Section Starts Here -->
    <section class="device-menu">
        <div class="container">
            <h2 class="text-center">Device Menu</h2>

            <?php 

                //SQL Query to Get laptops based on search keyword
                //$search =dell '; DROP database name;
                // "SELECT * FROM tbl_device WHERE title LIKE '%dell'%' OR description LIKE '%dell%'";
                $sql = "SELECT * FROM tbl_device WHERE title LIKE '%$search%' OR description LIKE '%$search%'";

                //Execute the Query
                $res = mysqli_query($conn, $sql);

                //Count Rows
                $count = mysqli_num_rows($res);

                //Check whether device available of not
                if($count>0)
                {
                    //Food Available
                    while($row=mysqli_fetch_assoc($res))
                    {
                        //Get the details
                        $id = $row['id'];
                        $title = $row['title'];
                        $price = $row['price'];
                        $description = $row['description'];
                        $image_name = $row['image_name'];
                        ?>

                        <div class="device-menu-box">
                            <div class="device-menu-img">
                                <?php 
                                    // Check whether image name is available or not
                                    if($image_name=="")
                                    {
                                        //Image not Available
                                        echo "<div class='error'>Image not Available.</div>";
                                    }
                                    else
                                    {
                                        //Image Available
                                        ?>
                                        <img src="<?php echo SITEURL; ?>images/device/<?php echo $image_name; ?>" alt="Laptop" class="img-responsive img-curve">
                                        <?php 

                                    }
                                ?>
                                
                            </div>

                            <div class="device-menu-desc">
                                <h4><?php echo $title; ?></h4>
                                <p class="device-price">$<?php echo $price; ?></p>
                                <p class="device-detail">
                                    <?php echo $description; ?>
                                </p>
                                <br>

                                <a href="#" class="btn btn-primary">Order Now</a>
                            </div>
                        </div>

                        <?php
                    }
                }
                else
                {
                    //Food Not Available
                    echo "<div class='error'>Laptop not found.</div>";
                }
            
            ?>

            

            <div class="clearfix"></div>

            

        </div>

    </section>
    <!-- device Menu Section Ends Here -->

    <?php include('partials-front/footer.php'); ?>
