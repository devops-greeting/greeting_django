from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from os
print (os.environ['ten'])

def index(request):
    return HttpResponse("Hello, Nhon")
