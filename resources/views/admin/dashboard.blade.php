<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexTech Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="bg-light">
    <nav class="navbar navbar-dark bg-dark mb-4">
        <div class="container">
            <a class="navbar-brand" href="#">Admin Panel</a>
            <div class="d-flex gap-2">
                <a href="{{ route('home') }}" target="_blank" class="btn btn-outline-light btn-sm">View Site</a>
                <form action="{{ route('logout') }}" method="POST">
                    @csrf <button class="btn btn-danger btn-sm">Logout</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container pb-5">
        @if(session('success')) <div class="alert alert-success">{{ session('success') }}</div> @endif
        <div class="row">
            <div class="col-md-3">
                <div class="list-group sticky-top" style="top:20px;">
                    <a href="#hero" class="list-group-item list-group-item-action active" data-bs-toggle="list">Hero</a>
                    <a href="#about" class="list-group-item list-group-item-action" data-bs-toggle="list">About</a>
                    <a href="#services" class="list-group-item list-group-item-action"
                        data-bs-toggle="list">Services</a>
                    <a href="#projects" class="list-group-item list-group-item-action"
                        data-bs-toggle="list">Projects</a>
                    <a href="#features" class="list-group-item list-group-item-action"
                        data-bs-toggle="list">Features</a>
                    <a href="#faq" class="list-group-item list-group-item-action" data-bs-toggle="list">FAQ</a>
                    <a href="#pricing" class="list-group-item list-group-item-action" data-bs-toggle="list">Pricing
                        Plans</a>
                    <a href="#general" class="list-group-item list-group-item-action" data-bs-toggle="list">Logo &
                        General</a>
                    <a href="#newsletter" class="list-group-item list-group-item-action"
                        data-bs-toggle="list">Newsletter Emails</a>
                    <a href="#contact-settings" class="list-group-item list-group-item-action"
                        data-bs-toggle="list">Contact Info</a>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content">
                    <!-- Hero -->
                    <div class="tab-pane fade show active" id="hero">
                        <form action="{{ route('admin.hero.update') }}" method="POST" class="card p-3">
                            @csrf
                            <h5>Hero Section</h5>
                            <input name="hero_title" value="{{ $content['hero_title'] ?? '' }}"
                                class="form-control mb-2" placeholder="Title">
                            <input name="hero_subtitle" value="{{ $content['hero_subtitle'] ?? '' }}"
                                class="form-control mb-2" placeholder="Subtitle">
                            <button class="btn btn-primary">Update</button>
                        </form>
                    </div>
                    <!-- About -->
                    <div class="tab-pane fade" id="about">
                        <form action="{{ route('admin.about.update') }}" method="POST" class="card p-3">
                            @csrf
                            <h5>About Section</h5>
                            <input name="about_title" value="{{ $content['about_title'] ?? '' }}"
                                class="form-control mb-2" placeholder="Title">
                            <textarea name="about_desc"
                                class="form-control mb-2">{{ $content['about_desc'] ?? '' }}</textarea>
                            <input name="about_exp" value="{{ $content['about_exp'] ?? '' }}" class="form-control mb-2"
                                placeholder="Experience">
                            <button class="btn btn-primary">Update</button>
                        </form>
                    </div>
                    <!-- Services -->
                    <div class="tab-pane fade" id="services">
                        <form action="{{ route('admin.service.store') }}" method="POST" class="card p-3 mb-3">
                            @csrf <h5>Add Service</h5>
                            <input name="icon" class="form-control mb-2" placeholder="Icon (fas fa-code)">
                            <input name="title" class="form-control mb-2" placeholder="Title">
                            <textarea name="description" class="form-control mb-2" placeholder="Description"></textarea>
                            <button class="btn btn-success">Add</button>
                        </form>
                        <ul class="list-group">
                            @foreach($services as $s)
                            <li class="list-group-item d-flex justify-content-between">{{ $s->title }} <a
                                    href="{{ route('admin.service.delete', $s->id) }}" class="text-danger">Delete</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <!-- Projects -->
                    
                    <div class="tab-pane fade" id="projects">
                        <form action="{{ route('admin.project.store') }}" method="POST" enctype="multipart/form-data"
                            class="card p-3 mb-3">
                            @csrf
                            <h5>Add Project</h5>

                            <input name="title" class="form-control mb-2" placeholder="Project Title" required>

                            <input name="category" class="form-control mb-2" placeholder="Category (e.g. Web Dev)"
                                required>

                            <!-- Link Input Field -->
                            <input type="url" name="link" class="form-control mb-2"
                                placeholder="Project Link (https://example.com)" required>

                            <input type="file" name="image" class="form-control mb-2" required>

                            <button class="btn btn-success">Add Project</button>
                        </form>

                        
                        <ul class="list-group">
                            @foreach($projects as $p)
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <div>
                                    <strong>{{ $p->title }}</strong> - <a href="{{ $p->link }}" target="_blank">Link</a>
                                </div>
                                <a href="{{ route('admin.project.delete', $p->id) }}" class="text-danger">Delete</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <!-- Features -->
                    <div class="tab-pane fade" id="features">
                        <form action="{{ route('admin.feature.store') }}" method="POST" class="card p-3 mb-3">
                            @csrf <h5>Add Feature</h5>
                            <input name="icon" class="form-control mb-2" placeholder="Icon">
                            <input name="title" class="form-control mb-2" placeholder="Title">
                            <textarea name="description" class="form-control mb-2"></textarea>
                            <button class="btn btn-success">Add</button>
                        </form>
                        <ul class="list-group">
                            @foreach($features as $f)
                            <li class="list-group-item d-flex justify-content-between">{{ $f->title }} <a
                                    href="{{ route('admin.feature.delete', $f->id) }}" class="text-danger">Delete</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <!-- FAQ -->
                    <div class="tab-pane fade" id="faq">
                        <form action="{{ route('admin.faq.store') }}" method="POST" class="card p-3 mb-3">
                            @csrf <h5>Add FAQ</h5>
                            <input name="question" class="form-control mb-2" placeholder="Question">
                            <textarea name="answer" class="form-control mb-2" placeholder="Answer"></textarea>
                            <button class="btn btn-success">Add</button>
                        </form>
                        <ul class="list-group">
                            @foreach($faqs as $fq)
                            <li class="list-group-item d-flex justify-content-between">{{ $fq->question }} <a
                                    href="{{ route('admin.faq.delete', $fq->id) }}" class="text-danger">Delete</a></li>
                            @endforeach
                        </ul>
                    </div>

                    <!-- Pricing Tab -->
                    <div class="tab-pane fade" id="pricing">
                        <div class="card mb-3">
                            <div class="card-header bg-warning text-dark">Add Pricing Plan</div>
                            <div class="card-body">
                                <form action="{{ route('admin.pricing.store') }}" method="POST">
                                    @csrf
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label>Plan Name</label>
                                            <input type="text" name="name" class="form-control"
                                                placeholder="e.g. Professional" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Price</label>
                                            <input type="text" name="price" class="form-control" placeholder="e.g. $99"
                                                required>
                                        </div>
                                        <div class="col-12">
                                            <label>Features (Separate by comma)</label>
                                            <textarea name="features" class="form-control"
                                                placeholder="e.g. 10 Pages, SEO, Support" required></textarea>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" name="is_recommended"
                                                    id="recCheck">
                                                <label class="form-check-label" for="recCheck">Mark as Recommended
                                                    (Highlight)</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-warning">Add Plan</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <!-- Pricing List -->
                        <table class="table table-bordered bg-white">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Features</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($pricings as $plan)
                                <tr>
                                    <td>{{ $plan->name }}</td>
                                    <td>{{ $plan->price }}</td>
                                    <td>{{ Str::limit($plan->features, 50) }}</td>
                                    <td>
                                        @if($plan->is_recommended)
                                        <span class="badge bg-success">Recommended</span>
                                        @else
                                        <span class="badge bg-secondary">Standard</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('admin.pricing.delete', $plan->id) }}"
                                            class="btn btn-danger btn-sm" onclick="return confirm('Delete?')">Delete</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                    <!-- General / Logo Tab -->
                    <div class="tab-pane fade" id="general">
                        <div class="card">
                            <div class="card-header bg-dark text-white">Logo Settings</div>
                            <div class="card-body">
                                <form action="{{ route('admin.logo.update') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf

                                    <!-- Logo Type Selection -->
                                    <div class="mb-3">
                                        <label class="form-label fw-bold">Logo Type:</label><br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="logo_type" value="text"
                                                {{ ($content['logo_type'] ?? 'text' )=='text' ? 'checked' : '' }}>
                                            <label class="form-check-label">Text Logo</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="logo_type" value="image"
                                                {{ ($content['logo_type'] ?? 'text' )=='image' ? 'checked' : '' }}>
                                            <label class="form-check-label">Image Logo</label>
                                        </div>
                                    </div>

                                    <!-- Text Logo Input -->
                                    <div class="mb-3">
                                        <label class="form-label">Logo Text</label>
                                        <input type="text" name="logo_text" class="form-control"
                                            value="{{ $content['logo_text'] ?? 'NexTech.' }}"
                                            placeholder="e.g. MyAgency">
                                    </div>

                                    <!-- Image Logo Input -->
                                    <div class="mb-3">
                                        <label class="form-label">Upload Logo Image</label>
                                        <input type="file" name="logo_image" class="form-control">
                                        @if(isset($content['logo_image']))
                                        <div class="mt-2">
                                            <small>Current Logo:</small><br>
                                            <img src="{{ asset('storage/'.$content['logo_image']) }}" height="50"
                                                class="bg-dark p-1">
                                        </div>
                                        @endif
                                    </div>

                                    <button class="btn btn-primary">Save Settings</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Newsletter -->
                    <div class="tab-pane fade" id="newsletter">
                        <div class="card shadow-sm">
                            <div class="card-header bg-info text-white">
                                <h5 class="mb-0">Subscribed Emails List</h5>
                            </div>
                            <div class="card-body p-0">
                                <table class="table table-bordered table-hover mb-0">
                                    <thead class="table-light">
                                        <tr>
                                            <th>Email Address</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($subscribers as $sub)
                                        <tr>
                                            <td>{{ $sub->email }}</td>
                                            <td>{{ $sub->created_at->format('d M, Y') }}</td>
                                            <td>
                                                <a href="{{ route('admin.subscriber.delete', $sub->id) }}"
                                                    class="btn btn-danger btn-sm" onclick="return confirm('Delete?')">
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        @endforeach

                                        @if($subscribers->isEmpty())
                                        <tr>
                                            <td colspan="3" class="text-center py-3 text-muted">No emails found.</td>
                                        </tr>
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Info Tab -->
                    <div class="tab-pane fade" id="contact-settings">
                        <div class="card shadow-sm">
                            <div class="card-header bg-primary text-white">Edit Contact Info</div>
                            <div class="card-body">
                                <form action="{{ route('admin.contact.update') }}" method="POST">
                                    @csrf

                                    <div class="mb-3">
                                        <label>Sub-Heading</label>
                                        <input type="text" name="contact_subtitle" class="form-control"
                                            value="{{ $content['contact_subtitle'] ?? 'Get In Touch' }}">
                                    </div>

                                    <div class="mb-3">
                                        <label>Main Heading</label>
                                        <input type="text" name="contact_title" class="form-control"
                                            value="{{ $content['contact_title'] ?? " Let's Discuss Your Project" }}">
                                    </div>

                                    <div class="mb-3">
                                        <label>Description</label>
                                        <textarea name="contact_desc"
                                            class="form-control">{{ $content['contact_desc'] ?? 'Ready to start? Fill out the form...' }}</textarea>
                                    </div>

                                    <div class="mb-3">
                                        <label>Location</label>
                                        <input type="text" name="contact_location" class="form-control"
                                            value="{{ $content['contact_location'] ?? '123 Tech Avenue' }}">
                                    </div>

                                    <div class="mb-3">
                                        <label>Email Display</label>
                                        <input type="text" name="contact_email_text" class="form-control"
                                            value="{{ $content['contact_email_text'] ?? 'hello@nextech.com' }}">
                                    </div>

                                    <button class="btn btn-primary">Update Info</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>