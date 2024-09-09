from django.contrib import admin
from django.urls import path

from website import views as website_views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", website_views.homepage, name="homepage"),
]
