<!DOCTYPE html>
<html>
<head>
    <title>New Message</title>
</head>
<body>
    <h2>New Project Inquiry</h2>
    <p><strong>Name:</strong> {{ $data['name'] }}</p>
    <p><strong>Email:</strong> {{ $data['email'] }}</p>
    <p><strong>Subject:</strong> {{ $data['subject'] }}</p>
    
    <h3>Message:</h3>
    <p>{{ $data['message'] }}</p>
</body>
</html>