# Basit Blog Projesi - Ferisoft İşe Alım Test Çözümü

Bu, Ferisoft için bir işe alım testi çözümü olarak sunulmuş basit ve küçük bir blog projesidir. Uygulama, Abdulkadir ALABDULLAH tarafından geliştirilmiştir.

## Kullanılan Teknolojiler
- Dil: PHP
- Framework: Laravel
- Style : TailwindCss
- Başlangıç Kit: Breeze

## Açıklama
Kayıtlı kullanıcılar, gönderileri ve kategorileri ekleyebilir, silebilir, değiştirebilir ve görüntüleyebilir. Gönderiler, belirli bir kategoriye dayanarak eklenir.

Kayıtlı olmayan kullanıcılar yalnızca gönderileri görüntüleyebilir ve bağlantılarını paylaşabilir.

## Kurulum Talimatları

Uygulamayı indirdikten sonra, geçiş dosyalarını ve seeders'ı çalıştırmanız önerilir:

1. Geçişleri çalıştırın:
   ```bash
   php artisan migrate
   ```

2. İlk kullanıcıyı (admin@example.com) şifreyle (password) eklemek için seeders'ı çalıştırın:
   ```bash
   php artisan db:seed
   ```

3. 20 gönderi ve 20 kategori rastgele eklenecektir, böylece kullanıcılar uygulamayı test edebilir.

## Database 
- ferisoft_challenge.sql adındaki dosya içinde veri tabanını paylaştım
## Notlar
- Uygulamanın doğru şekilde çalışması için kurulumdan sonra geçişleri ve seeders'ı çalıştırdığınızdan emin olun.
- Kullanıcı izinlerini ihtiyaç duyulursa gates veya policy kullanarak özelleştirebilirsiniz.
- Kullanıcılar için bir kayıt olma özelliği de mevcuttur.
- Bu uygulama 2 saatlik bir çalışma süresi içinde geliştirilmiştir.

## Güncellemeler ve Özellikler

Uygulamayı güncelleyerek, normal kullanıcıların kategorileri silmesini veya düzenlemesini engelleyen bir politika ekledim. Ayrıca, normal kullanıcıların diğer kullanıcıların oluşturduğu gönderileri silmesini veya düzenlemesini engelledim. Ancak, "admin" rolündeki kullanıcılara bu işlemleri gerçekleştirebilme yetkisi verildi.

Ayrıca, gönderilerin görünümünü güzelleştirmek amacıyla varsayılan bir resim şekli ekledim. Sistemde, varsayılan resim kullanıldıktan sonra gönderiler için resim yüklenmesine olanak tanınmaktadır.

Bu tür sistemleri daha önce geliştirdiğimi belirtmek isterim ve bir yönetsel web sitemin bağlantısını paylaşacağım:
[codil.org](http://codil.org)

Teşekkürler.

---------------------------------------------------

# Simple Blog Project - Test Solution for Ferisoft

This is a simple and small blog project presented as a solution for a job test by Ferisoft. The application is developed by Abdulkadir ALABDULLAH .

## Technologies Used
- Language: PHP
- Framework: Laravel
- Style : TailwindCss
- Starter Kit: Breeze

## Description
Registered users can add, delete, modify, and view posts and categories. Posts are added based on a specific category.

Unregistered users can only view posts and share their links.

## Installation Instructions

After downloading the application, it's recommended to run the migration files along with the seeders:

1. Run migrations:
   ```bash
   php artisan migrate
   ```

2. Run seeders to add the first user (admin@example.com) with password (password):
   ```bash
   php artisan db:seed
   ```

3. 20 posts and 20 categories will be added randomly to allow users to test the application.

## Database 
- The database has been provided in the ferisoft_challenge.sql file as a SQL dump
## Notes
- Make sure to run migrations and seeders after installation for the application to work correctly.
- You can customize user permissions using gates or policies if needed.
- A registration feature is also available for users.
- This application was developed within 2 hours of work.

## Updates & Features

I have updated the application by adding a policy that prevents regular users from deleting or modifying categories. It also restricts regular users from deleting or modifying posts created by other users. However, users in the "admin" role are granted full permissions to perform these actions.

Additionally, I have added a default image style for posts to enhance their appearance. The system is also designed to allow users to upload images for posts once the default image is used.

I would like to mention that I have previously developed similar systems, and I will share the link to one of my administrative websites:
[codil.org](http://codil.org)

Thank you.

---


