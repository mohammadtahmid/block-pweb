<?php
include_once 'inc/header.php';

include_once 'classes/Post.php';
$post = new Post();
include_once 'classes/Category.php';
$ct = new Category();
include_once 'helpers/Format.php';
$fr = new Format();

if(isset($_GET['catId'])){
  $catId = base64_decode($_GET['catId']);
}
?>
      <!-- END header -->


      

    <section class="site-section pt-5">
      <div class="container">
        <div class="row mb-4">
          <?php
            $catName = $ct->catName($catId);
            if($catName){
              while($row = mysqli_fetch_assoc($catName)){
                ?>
                  <div class="col-md-6">
                    <h2 class="mb-4">Category: <?=$row['catName']?></h2>
                  </div>
                <?php
              }
            }
          ?>
          
        </div>
        <div class="row blog-entries">
          <div class="col-md-12 col-lg-8 main-content">
            <div class="row mb-5 mt-5">

              <div class="col-md-12">

              <?php
              
                $limit = 1;
                if(isset($_GET['page'])){
                  $page = $_GET['page'];
                }else{
                  $page = 1;
                }
                $offset = ($page - 1) * $limit;
                $catPost = $post->categoryPost($catId, $offset, $limit);
                if($catPost){
                  while($row = mysqli_fetch_assoc($catPost)){
                    ?>
                <div class="post-entry-horzontal">
                  <a href="blog-single.php?singleId=<?=base64_encode($row['postId'])?>">
                    <div class="image element-animate" data-animate-effect="fadeIn" style="background-image: url(admin/<?=$row['imageOne']?>);"></div>
                    <span class="text">
                      <div class="post-meta">
                        <span class="author mr-2"><img src="admin/<?=$row['image']?>" alt="Colorlib"> Colorlib</span>&bullet;
                        <span class="mr-2"><?=$fr->fromatdate($row['create_time'])?></span> &bullet;
                        <span class="mr-2"><?=$row['catName']?></span> &bullet;
                      </div>
                      <h2><?=$row['title']?></h2>
                    </span>
                  </a>
                </div>
                    <?php
                  }
                }else{
                  echo "<h3 class='text-danger'>This Category Has NOt Post</h3>";
                }
              ?>


                <!-- END post -->


              </div>
            </div>

            <div class="row mt-5">
              <div class="col-md-12 text-center">
                <nav aria-label="Page navigation" class="text-center">
                  <?php
                    $num_page = $post->numCatPost($catId);
                    if($num_page){
                      $total_record = mysqli_num_rows($num_page);
                      $total_page = ceil($total_record / $limit);
                      ?>
                  <ul class="pagination">
                    <?php
                      if($page > 1){
                        ?>
                          <li class="page-item"><a class="page-link" href="<?=$_SERVER['REQUEST_URI']?>&page=<?=$page - 1?>">&lt;</a></li>
                        <?php
                      }
                    ?>
                    
                    <?php
                      for($i = 1; $i <= $total_page; $i++){
                        if($i == $page){
                          $active = 'active';
                        }else{
                          $active = '';
                        }
                        ?>
                          <li class="page-item <?=$active?>"><a class="page-link" href="<?=$_SERVER['REQUEST_URI']?>&page=<?=$i?>"><?=$i?></a></li>
                        <?php
                      }
                    ?>
                    
                    <?php
                      if($total_page > $page){
                        ?>
                        <li class="page-item"><a class="page-link" href="<?=$_SERVER['REQUEST_URI']?>&page=<?=$page + 1?>">&gt;</a></li>
                        <?php
                      }
                    ?>
                    
                  </ul>
                      <?php
                    }
                  ?>

                </nav>
              </div>
            </div>

            

          </div>

          <!-- END main-content -->
        <?php include_once 'inc/sidebar.php'?>
          <!-- END sidebar -->

        </div>
      </div>
    </section>
  
<?php include_once 'inc/footer.php' ?>