<?php
include("connect.php");

$islandsOfPersonalityQuery = "SELECT * FROM islandsofpersonality";
$islandsOfPersonalityResult = executeQuery($islandsOfPersonalityQuery);

$islandContentsQuery = "SELECT * FROM islandcontents";
$islandContentsResult = executeQuery($islandContentsQuery);

$islandContents = [];
while ($row = $islandContentsResult->fetch_assoc()) {
    $islandContents[$row['islandOfPersonalityID']][] = $row;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Jannerch's Core Memories</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        * {
            font-family: 'Poppins', sans-serif;
        }
        .w3-block {
            background-color: #c5b2a7;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="w3-top">
        <div class="w3-bar w3-white w3-wide w3-padding w3-card">
            <a href="#home" class="w3-bar-item w3-button"><b style="color: #e7a077;">Jannerch’s</b> <b>Memories</b></a>
            <div class="w3-right w3-hide-small">
                <a href="#friendships" class="w3-bar-item w3-button" style="font-weight: bold;">Friendships</a>
            </div>
        </div>
    </div>
    
    <div class="w3-display-container">
        <img src="img/background.png" alt="Background Image" style="width:100%; height:auto;">
    </div>

    <!-- Core Memories Section -->
    <div class="w3-content w3-padding" style="max-width:1564px" id="friendships"> 
        <h1 class="w3-border-bottom w3-border-light-grey w3-padding-16" style="font-weight: bold; text-align: center">Core Memories</h1>

<!-- Dynamic Islands -->
        <?php while ($island = mysqli_fetch_assoc($islandsOfPersonalityResult)) : ?>
    <div class="w3-row-padding" style="text-align: justify" id="<?php echo htmlspecialchars($island['islandOfPersonalityID']); ?>">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16" style="font-weight: bold">
            <?php echo htmlspecialchars($island['name']); ?>
        </h3>
        <p><?php echo htmlspecialchars($island['longDescription']); ?></p>

        <!-- Display Images and Content -->
        <?php if (!empty($islandContents[$island['islandOfPersonalityID']])): ?>
            <div class="w3-row-padding">
                <?php foreach ($islandContents[$island['islandOfPersonalityID']] as $content): ?>
                    <div class="w3-col l3 m6 w3-margin-bottom">
                        <div class="w3-display-container">
                            <img src="<?php echo htmlspecialchars($content['image']); ?>" alt="img" style="width:100%">
                            <div class="w3-display-topleft w3-padding" style="background-color: #c5b2a7;">
                                <?php echo htmlspecialchars($content['content']); ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>
    </div>
<?php endwhile; ?>


    </div>

    <!-- Footer -->
  <div class="container-fluid">
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
      <div class="col-md-4 d-flex align-items-center p-0">
        <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
          <svg class="bi" width="30" height="24">
            <use xlink:href="#bootstrap"></use>
          </svg>
        </a>
        <span class="mb-3 mb-md-0 text-body-secondary">© 2024 Janna Macatangay</span>
      </div>
    </footer>
  </div>

</body>
</html>
