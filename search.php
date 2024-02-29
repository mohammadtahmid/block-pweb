<?php
  include_once 'inc/header.php';
  include_once 'helpers/Format.php';
  $fr = new Format();
  include_once 'classes/Post.php';
  $post = new Post();

  if(!isset($_GET['search']) || $_GET['search'] == NULL){
    echo "<h1 class = 'text-danger'>Search Result NOt Found</h1>";
  }else{
    $search = $_GET['search'];
  }
?>



      <section class="site-section py-sm">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h2 class="mb-4">Search Posts</h2>
            </div>
          </div>
          <div class="row blog-entries">
            <div class="col-md-12 col-lg-8 main-content">
              <div class="row">

              <?php
              
                $getPos = $post->searchPost($search);
                if($getPos){
                  while($row = mysqli_fetch_assoc($getPos)){
                    ?>
                      <div class="col-md-6">
                        <a href="blog-single.php?singleId=<?=base64_encode($row['postId'])?>" class="blog-entry element-animate" data-animate-effect="fadeIn">
                          <img src="Admin/<?=$row['imageOne']?>" alt="Image placeholder">
                          <div class="blog-content-body">
                            <div class="post-meta">
                              <span class="author mr-2"><img src="Admin/<?=$row['image']?>" alt="U"><?=$row['username']?></span>&bullet;
                              <span class="mr-2"><?=$fr->fromatdate($row['create_time'])?></span>
                            </div>
                            <h2><?=$row['title']?></h2>
                          </div>
                        </a>
                      </div>
                    <?php
                  }
                }else{
                    echo "<h1 class = 'text-danger'>Search Result NOt Found</h1>";
                }
              
              ?>
              </div>



              

              

            </div>

            <!-- END main-content -->

            <!-- START sidebar -->

            <?php 
            include_once 'inc/sidebar.php';
            ?>

            <!-- END sidebar -->

          </div>
        </div>
      </section>
    
<?php
  include_once 'inc/footer.php';
?>