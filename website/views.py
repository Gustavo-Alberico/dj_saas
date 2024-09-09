from django.shortcuts import render

APP_NAME = "website"


def homepage(request):
    return render(request, f"{APP_NAME}/index.html")
