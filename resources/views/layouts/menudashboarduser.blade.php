<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <!-- Add icons to the links using the .nav-icon class
          with font-awesome or any other icon font library -->

    <li class="nav-item">
      <a href="{{ URL::to('admin/profil') }}" class="nav-link">
        <i class="nav-icon fas fa-users"></i>
        <p>
          Profil
        </p>
      </a>
    </li>

    <li class="nav-item">
      <a href="{{ route('transaksi.index') }}" class="nav-link">
        <i class="nav-icon fas fa-shopping-cart"></i>
        <p>
          Transaksi Saya
        </p>
      </a>
    </li>

    <li class="nav-item">
      <a href="#" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
        <i class="nav-icon fas fa-sign-out-alt"></i>
        <p>
          Sign Out
        </p>
      </a>
    </li>
  </ul>
</nav>
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
  @csrf
</form>
</ul>
</nav>