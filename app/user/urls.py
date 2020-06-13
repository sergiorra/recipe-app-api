from django.urls import path
from . import views

# The app_name helps to identify which app we are creating the URL
# when we use the reverse function
app_name = 'user'

urlpatterns = [
    path('create/', views.CreateUserView.as_view(), name='create'),
    path('token/', views.CreateTokenView.as_view(), name='token'),
    path('me/', views.ManageUserView.as_view(), name='me'),
]
