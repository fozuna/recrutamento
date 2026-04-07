<?php
?><!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="app-base" content="<?= Security::e($base ?? '') ?>">
  <meta name="csrf-token" content="<?= Security::e(Security::csrfToken()) ?>">
  <title>TRAXTER RH - Painel</title>
  <link rel="stylesheet" href="<?= $base ?>/assets/tailwind.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">
  <style> body { font-family: 'Montserrat', system-ui, -apple-system, sans-serif; } </style>
  <script src="<?= $base ?>/assets/phone-utils.js" defer></script>
  <script src="<?= $base ?>/assets/admin.js" defer></script>
</head>
<body class="min-h-screen bg-gray-50">
  <header class="app-header">
    <button type="button" class="app-nav-toggle touch-target md:hidden menu-toggle" aria-controls="admin-drawer" aria-expanded="false" data-admin-menu-toggle="1">
      <svg class="w-6 h-6" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"/></svg>
    </button>
    <div class="flex items-center gap-2">
      <img src="<?= $base ?>/assets/logo.png" alt="TRAXTER. - Recrutamento e Seleção" class="h-6 w-auto object-contain">
      <span class="text-sm font-semibold">Painel</span>
    </div>
  </header>
  <div class="app">
    <aside class="sidebar w-64 min-h-screen flex-shrink-0" data-admin-sidebar="1" style="background-color:#ffffff">
      <?php include APP_PATH . '/views/layouts/sidebar.php'; ?>
    </aside>
    <div id="admin-overlay" class="app-overlay" data-admin-overlay="1"></div>
    <main class="content flex-1 bg-gray-100 p-6">
      <?= $content ?>
    </main>
  </div>

  <footer class="border-t bg-white">
    <div class="px-6 py-3 text-gray-500 text-sm text-center">
      © <?= date("Y"); ?> 
      <a href="https://traxter.com.br/" target="_blank">
        <strong>TRAXTER Sistemas e Automações</strong>
      </a> - Todos os direitos reservados.
    </div>
  </footer>
</body>
</html>
