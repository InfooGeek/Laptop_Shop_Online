
    <?php include('partials-front/menu.php'); ?>

    <!-- dEVICE sEARCH Section Starts Here -->
    <section class="device-search text-center">
        <div class="container">
            
            <form action="<?php echo SITEURL; ?>device-search.php" method="POST">
                <input type="search" name="search" placeholder="Search for Laptops.." required>
                <input type="submit" name="submit" value="Search" class="btn btn-primary">
            </form>

        </div>
    </section>
    <!--dEVICE sEARCH Section Ends Here -->



    <!-- laptop MEnu Section Starts Here -->
    <section class="device-menu">
        <div class="container">
            <h2 class="text-center">Device Menu</h2>

            <?php 
                //Display device that are Active
                $sql = "SELECT * FROM tbl_device WHERE active='Yes'";

                //Execute the Query
                $res=mysqli_query($conn, $sql);

                //Count Rows
                $count = mysqli_num_rows($res);

                //CHeck whether the device are availalable or not
                if($count>0)
                {
                    //Foods Available
                    while($row=mysqli_fetch_assoc($res))
                    {
                        //Get the Values
                        $id = $row['id'];
                        $title = $row['title'];
                        $description = $row['description'];
                        $price = $row['price'];
                        $image_name = $row['image_name'];
                        ?>
                        
                        <div class="device-menu-box">
                            <div class="device-menu-img">
                                <?php 
                                    //CHeck whether image available or not
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

                                <a href="<?php echo SITEURL; ?>order.php?device_id=<?php echo $id; ?>" class="btn btn-primary">Order Now</a>
                            </div>
                        </div>

                        <?php
                    }
                }
                else
                {
                    //Device not Available
                    echo "<div class='error'>Laptop not found.</div>";
                }
            ?>

            

            

            <div class="clearfix"></div>

            

        </div>

    </section>
    <!--device Menu Section Ends Here -->

    <?php include('partials-front/footer.php'); ?>
