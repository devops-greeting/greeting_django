from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
import os
a = os.environ['ten']

def index(request):
    return HttpResponse("Hello, %s" %a)
