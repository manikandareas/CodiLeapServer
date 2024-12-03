INSERT INTO learning_paths (id, name, description, created_at, updated_at)
VALUES (1, 'Mobile Development', 'Comprehensive introduction to mobile app development.', 
        '2024-01-01', '2024-01-02');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (1, 'Getting Started with Mobile Development', 1, 
        'Foundational mobile development concepts', 1, 
        'beginner', 3, 67917, 
        4.84, 50, 
        '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (1, 1, 'Introduction to Mobile Platforms', 
        'Understanding mobile development fundamentals', 1, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (1, 1, 'What is Mobile Development?', 
                                '<h1>Introduction to Mobile Development</h1>

<h2>Definition of Mobile Development</h2>

<p>Mobile development refers to the process of creating applications (apps) that run on mobile devices, such as smartphones and tablets. Apps can be created for various platforms like Android, iOS, and cross-platform environments.</p>

<h3>Importance of Mobile Development</h3>

<ul>
    <li>Mobile devices have become integral to modern life, making mobile apps a crucial part of business, communication, entertainment, and more.</li>
    <li>The growing mobile market and the rise of mobile-first digital experiences.</li>
</ul>

<h2>Types of Mobile Apps</h2>

<h3>Native Apps</h3>
<p>Apps developed specifically for one platform (iOS or Android) using platform-specific languages like Swift/Objective-C for iOS and Java/Kotlin for Android.</p>
<ul>
    <li>Advantages: Better performance, access to device hardware, and a native user experience.</li>
</ul>

<h3>Hybrid Apps</h3>
<p>Apps developed using web technologies (HTML, CSS, JavaScript) and wrapped in a native container to run on multiple platforms.</p>
<ul>
    <li>Advantages: One codebase for multiple platforms, faster development.</li>
</ul>

<h3>Web Apps</h3>
<p>Mobile-optimized websites accessed via a browser, without installation.</p>
<ul>
    <li>Advantages: Accessibility from any device with an internet connection, cost-effective.</li>
</ul>

<h3>Progressive Web Apps (PWAs)</h3>
<p>Web apps that offer offline capabilities, push notifications, and native-like features but are still accessed through a web browser.</p>
<ul>
    <li>Advantages: No installation required, works across platforms.</li>
</ul>
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (2, 1, 'Overview of Mobile Platforms', 
                                '<h2>Platforms for Mobile Development</h2>

<h3>Android</h3>
<p>Overview of Android OS and its market share.</p>
<ul>
    <li>Tools and Technologies: Java, Kotlin, Android Studio.</li>
    <li>Key Advantages: Large user base, open-source.</li>
</ul>

<h3>iOS</h3>
<p>Overview of iOS OS and its market share.</p>
<ul>
    <li>Tools and Technologies: Swift, Objective-C, Xcode.</li>
    <li>Key Advantages: High-quality standards, user-centric design.</li>
</ul>

<h3>Cross-Platform Development</h3>
<p>Cross-platform development allows building apps for multiple platforms using a single codebase.</p>
<ul>
    <li>Tools: React Native, Flutter, Xamarin.</li>
    <li>Key Advantages: One codebase for multiple platforms, cost-efficiency.</li>
</ul>

<h2>Key Technologies Used in Mobile Development</h2>

<h3>Programming Languages</h3>
<ul>
    <li><strong>Java and Kotlin (Android):</strong> Core languages for Android app development.</li>
    <li><strong>Swift and Objective-C (iOS):</strong> Primary languages for iOS development.</li>
    <li><strong>JavaScript (Hybrid and Cross-platform):</strong> Used for frameworks like React Native and Ionic.</li>
</ul>

<h3>Mobile Development Frameworks</h3>

<ul>
    <li><strong>React Native:</strong> A popular framework for building cross-platform mobile apps using JavaScript and React.</li>
    <li><strong>Flutter:</strong> A framework developed by Google for creating natively compiled applications for mobile, web, and desktop from a single codebase.</li>
    <li><strong>Xamarin:</strong> A Microsoft-owned framework for cross-platform app development using C# and .NET.</li>
</ul>

<h3>IDEs (Integrated Development Environments)</h3>
<ul>
    <li><strong>Android Studio:</strong> Official IDE for Android development.</li>
    <li><strong>Xcode:</strong> Official IDE for iOS development.</li>
    <li><strong>Visual Studio Code:</strong> Used for hybrid and cross-platform app development.</li>
</ul>

<h3>Databases and APIs</h3>
<ul>
    <li>Local storage options like SQLite for mobile apps.</li>
    <li>Cloud services such as Firebase, AWS Mobile, and Google Cloud for backend services.</li>
</ul>', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (3, 1, 'Setting Up Development Environment', 
                                '<h1>Introduction to Development Environments</h1>

<h2>What is a Development Environment?</h2>

<p>A development environment is the set of tools, software, and configurations required to build, test, and deploy mobile applications.</p>

<h3>Why Setting Up the Right Environment Matters?</h3>

<ul>
    <li>An ideal environment ensures efficiency, supports the required platforms, provides debugging tools, and improves collaboration.</li>
</ul>

<h2>Installing Android Studio</h2>

<h3>Step 1: Download Android Studio</h3>
<p>Go to the official Android Studio download page and choose the version for your operating system (Windows, macOS, or Linux).</p>

<h3>Step 2: Install Android Studio</h3>

<ul>
    <li><strong>Windows:</strong> Run the installer and follow the on-screen instructions. Select "Standard" installation, which includes Android Studio, the Android SDK, and Android Virtual Device (AVD).</li>
    <li><strong>macOS/Linux:</strong> Follow the installation instructions specific to your OS.</li>
</ul>

<h3>Step 3: Initial Setup</h3>
<p>Launch Android Studio after installation. During the first-time setup, Android Studio will download essential components like the Android SDK, system images, and other necessary tools.</p>

<h2>Setting Up Android Studio for Development</h2>

<h3>Step 1: Configure Android Studio</h3>
<p>When Android Studio starts for the first time, you’ll be prompted to configure some initial settings:</p>
<ul>
    <li>Choose the theme (Light or Dark mode).</li>
    <li>Select whether to import previous settings from a prior installation of Android Studio.</li>
</ul>

<h3>Step 2: Install Android SDK</h3>
<p>The Android SDK (Software Development Kit) is required to build Android apps. Android Studio will download and install the SDK during the setup process.</p>
<p>You can manage SDK components by going to Preferences (macOS) or Settings (Windows/Linux) → Appearance & Behavior → System Settings → Android SDK.</p>
<ul>
    <li>Ensure that the latest SDK version is installed.</li>
</ul>

<h3>Step 3: Set Up Android Virtual Device (AVD)</h3>
<p>Android Studio uses the AVD Manager to create and manage emulators.</p>
<p>Open AVD Manager from the toolbar, select a device (e.g., Pixel 4), and choose a system image (e.g., Android 13).</p>
<p>Configure the virtual device settings and start the emulator to simulate an Android device.</p>

<hr>

<p class="text-center">Happy coding! 🚀</p>
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (2, 1, 'Building Your First App', 
        'Creating initial mobile application', 2, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (4, 2, 'Understanding Project Structure', 
                                '<h1>Introduction to Mobile App Project Structure</h1>

<h2>What is Project Structure?</h2>

<p>The project structure defines how your app’s code and resources are organized in your development environment. It influences maintainability, scalability, and team collaboration.</p>

<h3>Why Structure Matters:</h3>

<ul>
    <li>A well-organized project makes it easier to scale, troubleshoot, and collaborate with other developers.</li>
    <li>It helps ensure that the code remains clean, understandable, and easy to modify.</li>
</ul>

<h2>Overview of Android Project Structure</h2>

<h3>Basic Anatomy of an Android Studio Project:</h3>

<p>When you create a new project in Android Studio, the IDE automatically generates a project with predefined folders and files.</p>

<h3>Key Project Folders and Files:</h3>
<ul>
    <li><strong>app/:</strong> This is the main directory for your app''s code and resources.</li>
    <li><strong>src/main/:</strong> Contains all the source code and resources for the app.</li>
    <li><strong>java/ (or kotlin/ for Kotlin):</strong> Contains the app''s Java or Kotlin code.</li>
    <li><strong>res/:</strong> Contains resources such as layouts, strings, images, and styles.</li>
    <li><strong>AndroidManifest.xml:</strong> The manifest file, which defines the structure of the app, including its components (activities, services, permissions, etc.).</li>
    <li><strong>assets/:</strong> Contains raw files like fonts or audio used in the app.</li>
    <li><strong>build.gradle:</strong> The project build script, which defines dependencies and configurations.</li>
    <li><strong>gradle/:</strong> Contains Gradle-related files for managing dependencies and building the app.</li>
    <li><strong>build/:</strong> This folder is automatically created by Android Studio during the build process and contains compiled resources and APKs.</li>
</ul>

<h3>Folder Structure Overview:</h3>
<pre><code class="language-text">
MyApp/
├── app/
│   ├── src/
│   │   └── main/
│   │       ├── java/
│   │       │   └── com/
│   │       │       └── example/
│   │       │           └── myapp/
│   │       │               ├── MainActivity.kt
│   │       │               ├── LoginActivity.kt
│   │       │               ├── viewmodels/
│   │       │               │   └── MainViewModel.kt
│   │       │               └── repositories/
│   │       │                   └── UserRepository.kt
│   │       ├── res/
│   │       │   ├── layout/
│   │       │   │   ├── activity_main.xml
│   │       │   │   └── activity_login.xml
│   │       │   ├── drawable/
│   │       │   │   └── ic_launcher.png
│   │       │   ├── values/
│   │       │   │   ├── strings.xml
│   │       │   │   └── colors.xml
│   │       └── AndroidManifest.xml
└── build.gradle
</code></pre>

<h2>Best Practices for Organizing Code in Android Projects</h2>

<h3>Separation of Concerns</h3>
<ul>
    <li><strong>Activity/Fragment:</strong> Manages UI and interacts with the user.</li>
    <li><strong>ViewModel:</strong> Holds UI-related data and is used for managing data in a lifecycle-conscious way.</li>
    <li><strong>Repository:</strong> Manages data sources (e.g., databases, APIs, etc.) and provides them to the ViewModel.</li>
</ul>

<h3>Use the Model-View-ViewModel (MVVM) Pattern:</h3>
<ul>
    <li><strong>Model:</strong> Represents the data and business logic.</li>
    <li><strong>View:</strong> Represents the UI elements.</li>
    <li><strong>ViewModel:</strong> Handles the interaction between the View and the Model.</li>
</ul>

<h3>Modularization</h3>
<p>Divide your project into smaller, manageable modules or packages. For example, organize features into their own packages (e.g., auth, profile, settings).</p>

<h3>Organizing Activities, Fragments, and Views</h3>
<ul>
    <li><strong>Activities:</strong> Use activities to represent full-screen pages or entry points (e.g., MainActivity, LoginActivity).</li>
    <li><strong>Fragments:</strong> Use fragments for reusable UI components (e.g., a fragment showing a list of items).</li>
    <li><strong>Views:</strong> Create custom views if you need to reuse a complex UI element across multiple activities or fragments.</li>
</ul>

<h3>Managing Resources</h3>
<p>Organize your layouts, images, strings, and other resources under their respective folders:</p>
<ul>
    <li><strong>res/layout/:</strong> Contains XML files for layouts.</li>
    <li><strong>res/drawable/:</strong> Contains images (e.g., icons, background images).</li>
    <li><strong>res/values/:</strong> Contains values like strings, colors, and dimensions.</li>
</ul>

<h3>Avoiding Hardcoding</h3>
<p>Always place strings, colors, and other constants in XML files (strings.xml, colors.xml) rather than hardcoding them in Java/Kotlin code.</p>

<h2>Version Control and Collaboration</h2>

<h3>Git for Version Control</h3>
<p>Use Git to track changes, collaborate with other developers, and manage different versions of your app.</p>
<p>Add a <code>.gitignore</code> file to exclude unnecessary files from being tracked (e.g., build files, local configurations).</p>

<h3>Branching and Pull Requests</h3>
<ul>
    <li>Use branches for different features or bug fixes.</li>
    <li>Create pull requests to review and merge changes into the main codebase.</li>
</ul>

<h2>Testing and Debugging</h2>

<h3>Unit Tests:</h3>
<p>Place unit tests in the <code>src/test/</code> directory and use frameworks like JUnit for unit testing.</p>

<h3>UI Tests:</h3>
<p>Use Espresso for testing the user interface in the <code>src/androidTest/</code> directory.</p>

<h3>Debugging:</h3>
<p>Use Android Studio’s Logcat and debugger to troubleshoot issues in your code.</p>

<hr>

<p class="text-center">Happy coding! 🚀</p>
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (5, 2, 'Creating Simple User Interface', 
                                '<h1>Introduction to Designing Android App Interfaces</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Desain antarmuka pengguna (UI) memainkan peran penting dalam menciptakan pengalaman pengguna (UX) yang baik. Dalam pengembangan aplikasi Android, penting untuk memahami elemen-elemen dasar dalam mendesain UI untuk memberikan pengalaman yang mulus bagi pengguna.</p>
</div>

<h2>What is a User Interface?</h2>

<p>A user interface (UI) is the part of the app that users interact with. It includes buttons, text fields, images, and other visual elements that allow users to navigate and interact with the app.</p>

<h3>Why UI Design Matters?</h3>

<ul>
    <li>A well-designed UI ensures a smooth, intuitive user experience (UX). It helps users navigate the app with ease, understand its functionality, and have a positive overall experience.</li>
</ul>

<h3>Key Android UI Elements:</h3>

<ul>
    <li><strong>Buttons:</strong> Allow users to perform actions.</li>
    <li><strong>TextViews:</strong> Display text to users.</li>
    <li><strong>EditTexts:</strong> Input fields for text entry.</li>
    <li><strong>Images:</strong> Display graphical content (e.g., logos, icons).</li>
    <li><strong>Layouts:</strong> Organize UI elements on the screen (LinearLayout, RelativeLayout, ConstraintLayout, etc.).</li>
</ul>

<h2>Basics of Layouts in Android</h2>

<h3>What are Layouts?</h3>

<p>Layouts in Android define the structure and positioning of UI components on the screen. Android provides several layout types that help arrange and organize UI elements.</p>

<h3>Common Layout Types:</h3>

<ul>
    <li><strong>LinearLayout:</strong> Arranges children (views) in a single row or column.</li>
    <li><strong>RelativeLayout:</strong> Allows child views to be positioned relative to each other.</li>
    <li><strong>ConstraintLayout:</strong> A flexible layout where you define constraints between views, allowing for more complex UI designs.</li>
    <li><strong>FrameLayout:</strong> Used to display a single view or as a container for dynamic fragments.</li>
</ul>

<h3>Choosing the Right Layout:</h3>

<ul>
    <li><strong>LinearLayout:</strong> Good for simple vertical or horizontal arrangements.</li>
    <li><strong>RelativeLayout:</strong> Useful when you need to position elements relative to each other.</li>
    <li><strong>ConstraintLayout:</strong> Best for more complex designs where elements need to be positioned precisely.</li>
</ul>

<h2>Creating and Designing the Basic UI</h2>

<h3>Step 1: Creating a New Activity Layout</h3>

<p>In Android Studio, navigate to <code>res/layout/</code> and open <code>activity_main.xml</code> (or create a new layout file). Android Studio provides a Text Editor (XML code view) and a Design Editor (drag-and-drop UI builder). You can use either, or both, to design your interface.</p>

<h3>Step 2: Adding UI Components</h3>

<p>To design a basic layout, you can add components such as:</p>
<ul>
    <li><strong>TextView:</strong> Displays text to the user.</li>
    <li><strong>Button:</strong> Allows the user to perform an action.</li>
    <li><strong>EditText:</strong> An input field where users can type text.</li>
    <li><strong>ImageView:</strong> Displays images, such as logos or icons.</li>
</ul>

<h4>Example Layout:</h4>

<pre><code class="language-xml">
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="16dp">

    <TextView
        android:id="@+id/welcomeText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Welcome to My App"
        android:textSize="24sp"
        android:layout_marginBottom="20dp" />

    <EditText
        android:id="@+id/username"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter your username"
        android:layout_marginBottom="20dp"
        android:padding="16dp"
        android:background="@android:drawable/edit_text" />

    <Button
        android:id="@+id/loginButton"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Login"
        android:background="?android:attr/selectableItemBackground"
        android:textColor="@android:color/white"
        android:layout_marginBottom="20dp" />
</LinearLayout>
</code></pre>

<h3>Step 3: Understand the XML Components:</h3>

<ul>
    <li><strong>LinearLayout:</strong> A layout that arranges its child views in a vertical column (as specified by <code>android:orientation="vertical"</code>).</li>
    <li><strong>TextView:</strong> Displays static text. Here, the text is set to “Welcome to My App”, and its size is defined as 24sp.</li>
    <li><strong>EditText:</strong> A field where users can input their username. It has a hint text ("Enter your username") displayed when the field is empty.</li>
    <li><strong>Button:</strong> A clickable button with the label "Login".</li>
</ul>

<h2>Working with Constraints (Using ConstraintLayout)</h2>

<h3>What is ConstraintLayout?</h3>

<p>ConstraintLayout is a more powerful layout type that allows you to define rules (constraints) for the positioning of views relative to one another. It helps create complex layouts without nesting multiple layouts.</p>

<h3>Using ConstraintLayout in XML:</h3>

<h4>Example:</h4>

<pre><code class="language-xml">
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <TextView
        android:id="@+id/welcomeText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Welcome to My App"
        android:textSize="24sp"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        android:layout_marginTop="100dp" />

    <EditText
        android:id="@+id/username"
        android:layout_width="0dp"
        android:layout_height="wrap_content"
        android:hint="Enter your username"
        app:layout_constraintTop_toBottomOf="@+id/welcomeText"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        android:layout_marginTop="20dp"
        android:padding="16dp"
        android:background="@android:drawable/edit_text" />

    <Button
        android:id="@+id/loginButton"
        android:layout_width="0dp"
        android:layout_height="wrap_content"
        android:text="Login"
        app:layout_constraintTop_toBottomOf="@+id/username"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        android:layout_marginTop="20dp" />
</androidx.constraintlayout.widget.ConstraintLayout>
</code></pre>

<h3>Explanation:</h3>

<ul>
    <li><strong>ConstraintLayout:</strong> Used to position the TextView, EditText, and Button relative to each other using constraints.</li>
    <li><strong>layout_constraintTop_toTopOf="parent":</strong> Positions the TextView at the top of the screen.</li>
    <li><strong>layout_constraintTop_toBottomOf="@+id/welcomeText":</strong> Positions the EditText below the TextView.</li>
    <li><strong>layout_constraintTop_toBottomOf="@+id/username":</strong> Positions the Button below the EditText.</li>
</ul>

<h2>Previewing and Testing the UI</h2>

<h3>Previewing in Android Studio:</h3>

<p>Android Studio allows you to preview your layouts in real-time. Use the Design tab to see a graphical representation of your app layout, or use the Text tab to edit XML directly. You can also use the Preview tool to see how the layout behaves on different screen sizes and orientations (e.g., portrait or landscape).</p>

<h3>Testing the UI:</h3>

<p>Run the app on an Android Emulator or a physical device to see the layout in action and check for any UI issues. Ensure that elements are aligned properly, that there is enough space
', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (6, 2, 'Running App on Simulator/Device', 
                                '<h1>Introduction to App Deployment and Testing</h1>

<div class="alert alert-info">
    <div class="alert-title">Prasyarat Pembelajaran</div>
    <p>Deployment dan pengujian sangat penting untuk memastikan aplikasi berfungsi dengan baik pada berbagai perangkat dan konfigurasi. Pengujian membantu mengidentifikasi bug, masalah kinerja, dan kompatibilitas sebelum aplikasi diluncurkan kepada pengguna.</p>
</div>

<h2>Why Deploy and Test?</h2>

<p>Deployment and testing are crucial to ensure that the app functions as expected on different devices and configurations. Testing helps identify bugs, performance issues, and compatibility problems before the app reaches users.</p>

<h3>Key Steps in Deployment and Testing:</h3>

<ul>
    <li>Build the app and create an APK.</li>
    <li>Deploy the app to an emulator or physical device.</li>
    <li>Run tests to check the app’s performance and behavior.</li>
    <li>Debug issues that arise during testing.</li>
    <li>Create release versions for distribution on the Google Play Store.</li>
</ul>

<h2>Setting Up an Emulator for Testing</h2>

<h3>What is an Emulator?</h3>

<p>The Android Emulator simulates Android devices on your computer. It allows you to test your app on various Android versions and screen sizes without needing physical devices.</p>

<h3>Creating and Configuring an Emulator:</h3>

<ol>
    <li>In Android Studio, open the AVD Manager (Android Virtual Device Manager) from the toolbar.</li>
    <li>Click "Create Virtual Device" and select a device model (e.g., Pixel 4, Nexus 5X).</li>
    <li>Choose the system image (Android version) you want to test on (e.g., Android 13, or the latest stable version).</li>
    <li>Set device parameters (screen size, RAM, etc.), then click "Finish."</li>
</ol>

<h3>Running the App on the Emulator:</h3>

<p>Once the emulator is set up, select it as the deployment target in Android Studio, and click the Run button (green triangle). The app will compile, deploy, and launch on the emulator.</p>

<h2>Deploying and Testing on a Physical Device</h2>

<h3>Why Use a Physical Device?</h3>

<p>Testing on real devices is important because it gives you a better sense of the app’s performance, responsiveness, and behavior in real-world conditions.</p>

<h3>Setting Up Your Device:</h3>

<ol>
    <li><strong>Enable Developer Options:</strong> Go to Settings > About phone, and tap Build number seven times to unlock developer options.</li>
    <li><strong>Enable USB Debugging:</strong> In Settings > Developer options, enable USB debugging.</li>
    <li><strong>Connect the Device to Your Computer:</strong> Connect your device via USB. Ensure that Android Studio detects your device. You should see your device listed as a deployment target in the run configuration.</li>
</ol>

<h3>Deploying to a Physical Device:</h3>

<p>Select your physical device as the target in Android Studio and click the Run button. Android Studio will compile and install the app directly onto the device. Test the app on the device, checking for UI behavior, responsiveness, and any other specific device-related issues (e.g., hardware features like GPS, camera).</p>

<h2>Build Variants and Debugging Configurations</h2>

<h3>Understanding Build Variants:</h3>

<p>Android Studio allows you to create multiple build variants, such as debug and release builds. You can use build variants to test different versions of your app with different configurations (e.g., with or without debugging tools, or with production configurations).</p>

<h3>Creating Build Variants:</h3>

<p>By default, Android projects come with two build variants: debug and release. You can customize build variants in the Build.gradle files (e.g., for product flavors or build types).</p>

<pre><code class="language-xml">
android {
    buildTypes {
        debug {
            // Debug-specific settings
            debuggable true
            applicationIdSuffix ".debug"
        }
        release {
            // Release-specific settings
            minifyEnabled true
            proguardFiles getDefaultProguardFile(''proguard-android-optimize.txt''), ''proguard-rules.pro''
        }
    }
}
</code></pre>

<h3>Running Different Build Variants:</h3>

<p>You can select the desired build variant from the Build Variants tab in Android Studio and run it on your device or emulator.</p>

<h3>Debugging the App:</h3>

<p>Set breakpoints in your code by clicking on the left margin of the code editor in Android Studio. Click the Debug button (the bug icon) to start a debugging session. Android Studio will connect to the device/emulator and pause execution at your breakpoints, allowing you to inspect variables, step through code, and track down issues.</p>

<h2>Running Unit and UI Tests</h2>

<h3>Unit Tests:</h3>

<p>Unit tests are used to test individual components of your app (e.g., classes, methods). You can write unit tests using JUnit (for logic testing) and run them from the test directory (<code>src/test/java/</code>).</p>

<h4>Example of a simple unit test:</h4>

<pre><code class="language-java">
@Test
public void testAddition() {
    int result = 2 + 2;
    assertEquals(4, result);
}
</code></pre>

<h3>UI Tests:</h3>

<p>UI tests check the behavior of the user interface. Use Espresso to automate UI testing. Espresso allows you to simulate user actions such as clicking buttons, typing text, and scrolling, and it validates that the UI behaves as expected.</p>

<h4>Example of a simple UI test:</h4>

<pre><code class="language-java">
@Rule
public ActivityScenarioRule<MainActivity> activityRule =
        new ActivityScenarioRule<>(MainActivity.class);

@Test
public void testButtonClick() {
    onView(withId(R.id.loginButton)).perform(click());
    onView(withId(R.id.username)).check(matches(withText("")));
}
</code></pre>

<h3>Running Tests in Android Studio:</h3>

<p>You can run unit tests from the Run menu or using the Test tab in the Android Studio toolbar. For UI tests, you can run them using AndroidJUnitRunner in the test configuration.</p>
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (3, 1, 'Basics of App Functionality', 
        'Core mobile app interaction principles', 3, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (7, 3, 'Handling User Inputs', 
                                '<h1>Introduction to User Interactions</h1>

<h2>What is User Interaction?</h2>
<p>User interaction refers to the ways users communicate with an app. These interactions include gestures (taps, swipes), text input, button clicks, and other actions that trigger responses from the app. Effective user interaction management is crucial for a smooth and engaging app experience.</p>

<h2>Why is User Interaction Important?</h2>
<p>The way users interact with an app affects their overall experience. Managing interactions effectively ensures that the app is responsive, intuitive, and provides users with clear feedback.</p>

<h2>Basic UI Elements for User Interaction</h2>
<ul>
    <li><strong>Button:</strong> Used to trigger actions when clicked or tapped.</li>
    <li><strong>TextView:</strong> Displays static text to the user. Can be updated programmatically.</li>
    <li><strong>EditText:</strong> A text input field where users can enter data.</li>
    <li><strong>CheckBox:</strong> A checkbox that can be either checked or unchecked.</li>
    <li><strong>RadioButton:</strong> Used when a user must choose one option from a set of options.</li>
    <li><strong>ImageView:</strong> Displays images or icons, which can also be clickable for user interaction.</li>
</ul>

<h2>Handling Button Clicks</h2>
<h3>Setting Up Button Click Listeners in Kotlin</h3>

<p>In Kotlin, you can easily handle button clicks using <code>setOnClickListener</code> for a button, or you can define the <code>onClick</code> attribute in the XML and reference a method directly in the Kotlin code.</p>

<h4>Using XML (OnClick Attribute):</h4>
<p>In the layout XML file, you can specify an <code>onClick</code> attribute to call a method when the button is clicked:</p>

<pre><code class="language-xml">
<Button
    android:id="@+id/buttonSubmit"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Submit"
    android:onClick="onSubmitClicked" />
</code></pre>

<p>In the <code>MainActivity.kt</code> file, define the <code>onSubmitClicked</code> method:</p>

<pre><code class="language-kotlin">
fun onSubmitClicked(view: View) {
    Toast.makeText(this, "Button clicked!", Toast.LENGTH_SHORT).show()
}
</code></pre>

<h4>Using Kotlin Code (Set OnClickListener):</h4>
<p>In Kotlin, you can set an <code>OnClickListener</code> directly in the code:</p>

<pre><code class="language-kotlin">
val buttonSubmit = findViewById<Button>(R.id.buttonSubmit)
buttonSubmit.setOnClickListener {
    Toast.makeText(this, "Button clicked!", Toast.LENGTH_SHORT).show()
}
</code></pre>

<h2>Working with Text Input (EditText)</h2>
<h3>Getting User Input</h3>
<p>The <code>EditText</code> is used for accepting text input from users. You can capture this input and process it accordingly.</p>

<h4>Example layout with an EditText:</h4>
<pre><code class="language-xml">
<EditText
    android:id="@+id/editTextUsername"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:hint="Enter your username"
    android:inputType="text" />
</code></pre>

<h3>Accessing and Using the Input in Kotlin:</h3>
<p>To retrieve text entered in an EditText field, you can use the <code>text</code> property:</p>

<pre><code class="language-kotlin">
val editTextUsername = findViewById<EditText>(R.id.editTextUsername)
val username = editTextUsername.text.toString()
Toast.makeText(this, "Hello, $username", Toast.LENGTH_SHORT).show()
</code></pre>

<h3>Handling Input Validation:</h3>
<p>It''s essential to validate the user input to ensure it is appropriate (e.g., non-empty, correct format).</p>

<pre><code class="language-kotlin">
if (username.isEmpty()) {
    Toast.makeText(this, "Username cannot be empty", Toast.LENGTH_SHORT).show()
}
</code></pre>

<h2>Responding to CheckBox and RadioButton Interactions</h2>

<h3>CheckBox</h3>
<p>A <strong>CheckBox</strong> allows users to select or deselect an option. You can detect whether it is checked or unchecked using an <code>OnCheckedChangeListener</code>.</p>

<pre><code class="language-xml">
<CheckBox
    android:id="@+id/checkBoxAgree"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="I agree to the terms" />
</code></pre>

<h4>Handling CheckBox Changes in Kotlin:</h4>

<pre><code class="language-kotlin">
val checkBoxAgree = findViewById<CheckBox>(R.id.checkBoxAgree)
checkBoxAgree.setOnCheckedChangeListener { _, isChecked ->
    if (isChecked) {
        Toast.makeText(this, "Checked", Toast.LENGTH_SHORT).show()
    } else {
        Toast.makeText(this, "Unchecked", Toast.LENGTH_SHORT).show()
    }
}
</code></pre>

<h3>RadioButton</h3>
<p>A <strong>RadioButton</strong> allows the user to select one option from a group of choices. To ensure only one option can be selected at a time, you group them in a <code>RadioGroup</code>.</p>

<pre><code class="language-xml">
<RadioGroup
    android:id="@+id/radioGroupGender"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content">
    
    <RadioButton
        android:id="@+id/radioMale"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Male" />
        
    <RadioButton
        android:id="@+id/radioFemale"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Female" />
</RadioGroup>
</code></pre>

<h4>Handling RadioButton Selection in Kotlin:</h4>

<pre><code class="language-kotlin">
val radioGroupGender = findViewById<RadioGroup>(R.id.radioGroupGender)
radioGroupGender.setOnCheckedChangeListener { _, checkedId ->
    when (checkedId) {
        R.id.radioMale -> Toast.makeText(this, "Male selected", Toast.LENGTH_SHORT).show()
        R.id.radioFemale -> Toast.makeText(this, "Female selected", Toast.LENGTH_SHORT).show()
    }
}
</code></pre>

<h2>Gesture Detection and Handling</h2>

<h3>Handling Touch Gestures</h3>
<p>Android supports several touch gestures, such as taps, swipes, long presses, and more, which can be used to enhance user interaction.</p>

<h4>Using GestureDetector:</h4>
<p><strong>GestureDetector</strong> is a class that helps detect gestures like a single tap, double-tap, or swipe. You can override its methods to detect and respond to these gestures.</p>

<h5>Detecting a Single Tap with GestureDetector in Kotlin:</h5>

<pre><code class="language-kotlin">
val gestureDetector = GestureDetector(this, object : GestureDetector.SimpleOnGestureListener() {
    override fun onSingleTapUp(e: MotionEvent?): Boolean {
        Toast.makeText(this@MainActivity, "Single tap detected", Toast.LENGTH_SHORT).show()
        return super.onSingleTapUp(e)
    }
})

override fun onTouchEvent(event: MotionEvent): Boolean {
    return gestureDetector.onTouchEvent(event) || super.onTouchEvent(event)
}
</code></pre>

<h4>Using OnTouchListener for Custom Touch Events:</h4>
<p>You can also use an <code>OnTouchListener</code> to handle touch events directly on any view (e.g., buttons, images, etc.).</p>

<h5>Custom Touch Handling in Kotlin:</h5>

<pre><code class="language-kotlin">
val someView = findViewById<View>(R.id.someView)
someView.setOnTouchListener { v, event ->
    when (event.action) {
        MotionEvent.ACTION_DOWN -> {
            Toast.makeText(this, "Touch started", Toast.LENGTH_SHORT).show()
        }
        MotionEvent.ACTION_UP -> {
            Toast.makeText(this, "Touch ended", Toast.LENGTH_SHORT).show()
        }
    }
    true
}
</code></pre>

<h2>Launching New Activities</h2>

<h3>What is an Activity?</h3>
<p>An <strong>Activity</strong> in Android represents a single screen where the user interacts with the app. Multiple activities form the overall structure of an app.</p>

<h3>Launching a New Activity in Kotlin:</h3>
<p>To navigate to another screen (Activity), you use an <code>Intent</code>. The Intent allows you to specify the activity to launch.</p>

<h5>Launching a New Activity (SecondActivity) in Kotlin:</h5>

<pre><code class="language-kotlin">
val buttonNext = findViewById<Button>(
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (8, 3, 'Displaying Data Dynamically', 
                                '<h1>Introduction to Dynamic Content Rendering</h1>

<p>Dynamic content rendering is the process of updating and displaying content that is not static but changes based on user interaction or external data. In mobile app development, this can refer to things like:</p>
<ul>
    <li><strong>User Input:</strong> Modifying the UI based on what the user has entered in a form or search box.</li>
    <li><strong>External Data:</strong> Updating the UI with information pulled from a remote server, database, or API.</li>
    <li><strong>Real-Time Updates:</strong> Displaying live data (e.g., live scores, messages, or notifications).</li>
</ul>

<p>Dynamic rendering is crucial for keeping your app interactive and engaging.</p>

<h2>Key Components for Dynamic Content Rendering</h2>
<p>There are several key Android components used for dynamic content rendering:</p>
<ul>
    <li><strong>TextView:</strong> Displays text that can be updated at runtime.</li>
    <li><strong>ImageView:</strong> Displays images that can be loaded dynamically (e.g., from a URL).</li>
    <li><strong>RecyclerView:</strong> Used to display dynamic lists and grids efficiently.</li>
    <li><strong>ViewModel:</strong> Manages UI-related data in a lifecycle-conscious manner, especially useful for dynamic content tied to user actions.</li>
    <li><strong>LiveData:</strong> A lifecycle-aware data holder that can notify the UI of changes to data.</li>
    <li><strong>DataBinding:</strong> Simplifies UI updates by binding UI components directly to data sources.</li>
</ul>

<h2>Dynamic Text Updates Using TextView</h2>
<p><strong>TextView</strong> is a fundamental UI component for displaying text in Android. Dynamically updating the text based on user input or real-time data is a common use case.</p>

<h3>Example: Updating Text Based on User Input</h3>

<h4>XML Layout:</h4>
<pre><code class="language-xml">
<EditText
    android:id="@+id/editTextName"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:hint="Enter your name" />

<Button
    android:id="@+id/buttonSubmit"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Submit" />

<TextView
    android:id="@+id/textViewGreeting"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Hello, Guest!" />
</code></pre>

<h4>Kotlin Code:</h4>
<pre><code class="language-kotlin">
val editTextName = findViewById<EditText>(R.id.editTextName)
val buttonSubmit = findViewById<Button>(R.id.buttonSubmit)
val textViewGreeting = findViewById<TextView>(R.id.textViewGreeting)

buttonSubmit.setOnClickListener {
    val userName = editTextName.text.toString()
    textViewGreeting.text = "Hello, $userName!"
}
</code></pre>

<h4>Explanation:</h4>
<p>When the user enters their name and clicks "Submit", the TextView dynamically updates to greet the user by name.</p>

<h2>Dynamic Image Loading Using ImageView</h2>
<p><strong>ImageView</strong> is used to display images, and dynamically loading images from external sources (like URLs) or local storage is a common technique in Android apps.</p>

<h3>Example: Loading an Image from a URL using Glide</h3>

<h4>Add Glide Dependency in build.gradle:</h4>
<pre><code class="language-gradle">
implementation ''com.github.bumptech.glide:glide:4.15.0''
annotationProcessor ''com.github.bumptech.glide:compiler:4.15.0''
</code></pre>

<h4>XML Layout for ImageView:</h4>
<pre><code class="language-xml">
<ImageView
    android:id="@+id/imageView"
    android:layout_width="match_parent"
    android:layout_height="200dp" />
</code></pre>

<h4>Kotlin Code to Load Image:</h4>
<pre><code class="language-kotlin">
import com.bumptech.glide.Glide

val imageView = findViewById<ImageView>(R.id.imageView)
val imageUrl = "https://example.com/image.jpg"

Glide.with(this)
    .load(imageUrl)
    .into(imageView)
</code></pre>

<h4>Explanation:</h4>
<p><strong>Glide</strong> is a popular image loading library in Android that simplifies loading images from URLs into an ImageView. It handles image caching, transformations, and smooth loading.</p>

<h2>Dynamic Lists with RecyclerView</h2>
<p><strong>RecyclerView</strong> is an efficient widget for displaying lists of data, especially when the data changes or needs to be updated dynamically. Unlike ListView, RecyclerView supports advanced features such as layout management and view recycling.</p>

<h3>Example: Displaying a Dynamic List of Users</h3>

<h4>Data Model Class:</h4>
<pre><code class="language-kotlin">
data class User(val name: String, val age: Int)
</code></pre>

<h4>Adapter Class for RecyclerView:</h4>
<pre><code class="language-kotlin">
class UserAdapter(private val users: List<User>) : RecyclerView.Adapter<UserAdapter.UserViewHolder>() {

    class UserViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val nameTextView: TextView = view.findViewById(R.id.nameTextView)
        val ageTextView: TextView = view.findViewById(R.id.ageTextView)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): UserViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.item_user, parent, false)
        return UserViewHolder(view)
    }

    override fun onBindViewHolder(holder: UserViewHolder, position: Int) {
        val user = users[position]
        holder.nameTextView.text = user.name
        holder.ageTextView.text = user.age.toString()
    }

    override fun getItemCount() = users.size
}
</code></pre>

<h4>XML Layout for RecyclerView:</h4>
<pre><code class="language-xml">
<androidx.recyclerview.widget.RecyclerView
    android:id="@+id/recyclerView"
    android:layout_width="match_parent"
    android:layout_height="match_parent" />
</code></pre>

<h4>Activity Code to Set Up RecyclerView:</h4>
<pre><code class="language-kotlin">
val recyclerView = findViewById<RecyclerView>(R.id.recyclerView)
recyclerView.layoutManager = LinearLayoutManager(this)

val users = listOf(User("Alice", 25), User("Bob", 30))
val adapter = UserAdapter(users)
recyclerView.adapter = adapter
</code></pre>

<h4>Explanation:</h4>
<p><strong>RecyclerView</strong> is used to display a list of users. The <code>UserAdapter</code> binds the <code>User</code> data to each list item, and the layout manager handles how the items are displayed in a vertical or horizontal list. The adapter efficiently manages the list data and updates as needed.</p>
', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (9, 3, 'Debugging Basics', 
                                '<h1>Basic Debugging Techniques</h1>

<h2>4.1. Using Breakpoints in Android Studio</h2>
<p>Breakpoints are one of the most effective ways to stop code execution at a specific line and inspect what’s happening in your app.</p>

<h3>Setting Breakpoints</h3>
<p>In Android Studio, click in the gutter next to the line number (left side of the editor) where you want the breakpoint. A red dot will appear, indicating the breakpoint is set.</p>

<h3>Running the Debugger</h3>
<p>Once the breakpoint is set, click on the <strong>Debug</strong> icon (the bug icon) in Android Studio or use the shortcut <code>Shift + F9</code> to start the debugger. Your app will run normally, but when it reaches the breakpoint, it will pause execution, and you can inspect the current state of variables, objects, and the call stack.</p>

<h3>Inspecting Variables</h3>
<p>While paused at a breakpoint, you can hover over variables to see their values. You can also add variables to the <strong>Variables</strong> tab in the Debugger window to monitor them continuously as the app runs.</p>

<h3>Step Over, Step Into, Step Out</h3>
<ul>
    <li><strong>Step Over (F8)</strong>: Executes the current line of code and moves to the next line.</li>
    <li><strong>Step Into (F7)</strong>: Jumps into a function/method call to see what happens inside it.</li>
    <li><strong>Step Out (Shift + F8)</strong>: If you’re inside a method, it allows you to step out and return to the previous context.</li>
</ul>

<h2>4.2. Using Log Statements (Logcat)</h2>
<p>Another common debugging tool is Logcat, which shows logs and runtime messages from the app while it is running.</p>

<h3>Using Log Statements</h3>
<p>To print out log messages, use the <code>Log</code> class in Kotlin:</p>
<pre><code class="language-kotlin">Log.d("MyTag", "This is a debug message")</code></pre>
<p>You can use different log levels based on the severity of the message:</p>
<ul>
    <li><code>Log.d("MyTag", "Debug message")</code> – For general debugging.</li>
    <li><code>Log.i("MyTag", "Info message")</code> – For informative messages.</li>
    <li><code>Log.e("MyTag", "Error message")</code> – For error messages.</li>
    <li><code>Log.w("MyTag", "Warning message")</code> – For warning messages.</li>
</ul>

<h3>Viewing Logs</h3>
<p>Use the <strong>Logcat</strong> window in Android Studio to view your logs. You can filter logs by Log Level (e.g., Debug, Error) and by Tag (e.g., "MyTag"). This is extremely useful for tracking down issues related to data flow, network responses, or understanding the app''s behavior at runtime.</p>

<h2>4.3. Inspecting the UI with Layout Inspector</h2>
<p>UI-related bugs, such as incorrect layouts, views not displaying as expected, or overlapping components, are common in Android development. The Layout Inspector tool allows you to inspect the app''s UI in real-time and troubleshoot these kinds of issues.</p>

<h3>Using Layout Inspector</h3>
<p>While your app is running, open the Layout Inspector by navigating to <code>View → Tool Windows → Layout Inspector</code>.</p>
<p>This tool gives you a live view of your app’s UI, showing the widget hierarchy, properties, and layout constraints. You can inspect properties of each view, like its dimensions, position, padding, and margins.</p>

<h3>Debugging UI Performance Issues</h3>
<p>Use the UI Debugger to inspect how views are being drawn and whether there are any performance bottlenecks.</p>

<h2>4.4. Using Android Studio Profiler for Performance Issues</h2>
<p>Performance issues, such as high CPU usage, excessive memory consumption, or network delays, can often cause apps to crash or lag. The Android Profiler in Android Studio helps you identify and resolve these issues.</p>

<h3>Using the Profiler</h3>
<p>Open the Profiler by selecting <code>View → Tool Windows → Profiler</code>. The Profiler shows real-time data on CPU, Memory, and Network usage. You can monitor app performance over time and identify resource spikes, memory leaks, or long-running operations.</p>

<h3>Tracking Memory Leaks</h3>
<p>The Memory Profiler allows you to track memory usage, which is particularly useful when diagnosing memory leaks. Memory leaks occur when objects are not properly cleared from memory, leading to reduced app performance or crashes.</p>

<h2>4.5. Handling Crashes with Exception Handling</h2>
<p>Crashes often occur due to unhandled exceptions. To prevent crashes and improve app stability, it’s important to handle exceptions properly.</p>

<h3>Using Try-Catch Blocks</h3>
<p>In Kotlin, use <code>try-catch</code> blocks to catch exceptions and handle errors gracefully:</p>
<pre><code class="language-kotlin">
try {
    val result = 10 / 0
} catch (e: ArithmeticException) {
    Log.e("Error", "Cannot divide by zero", e)
}
</code></pre>
<p>This prevents your app from crashing if an exception occurs, and you can log the error for further investigation.</p>

<h3>Crash Reporting</h3>
<p>Use crash reporting tools like <strong>Firebase Crashlytics</strong> to get detailed logs of uncaught exceptions in production. This can help you identify bugs that only occur in certain conditions.</p>
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (2, 'Designing Mobile User Interfaces', 1, 
        'Comprehensive mobile UI design principles', 2, 
        'intermediate', 3, 124238, 
        4.87, 60, 
        '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (4, 2, 'Introduction to UI Layouts', 
        'Understanding mobile UI layout techniques', 1, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (10, 4, 'Using Common UI Elements', 
                                '<h1>Introduction to Common UI Elements</h1>
<p>In Android development, UI elements are the building blocks for creating interactive user interfaces. Common UI elements include components like <strong>TextView</strong>, <strong>Button</strong>, <strong>EditText</strong>, and <strong>ImageView</strong>. These elements help users interact with the app and display information.</p>

<h2>2. Using TextView for Displaying Text</h2>
<p><strong>TextView</strong> is used to display static or dynamic text in Android apps.</p>

<h3>Example: Displaying Static Text:</h3>
<pre><code class="language-xml">
<TextView
    android:id="@+id/textView"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Hello, World!" />
</code></pre>

<h3>Example: Changing Text Dynamically in Kotlin:</h3>
<pre><code class="language-kotlin">
val textView = findViewById<TextView>(R.id.textView)
textView.text = "Welcome to Android!"
</code></pre>

<h2>3. Using Button for User Interaction</h2>
<p><strong>Button</strong> is a clickable UI element that triggers an action when pressed.</p>

<h3>Example: Creating a Button:</h3>
<pre><code class="language-xml">
<Button
    android:id="@+id/button"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Click Me" />
</code></pre>

<h3>Example: Handling Button Click in Kotlin:</h3>
<pre><code class="language-kotlin">
val button = findViewById<Button>(R.id.button)
button.setOnClickListener {
    Toast.makeText(this, "Button Clicked!", Toast.LENGTH_SHORT).show()
}
</code></pre>

<h2>4. Using EditText for User Input</h2>
<p><strong>EditText</strong> is used for collecting user input in the form of text.</p>

<h3>Example: Creating an EditText:</h3>
<pre><code class="language-xml">
<EditText
    android:id="@+id/editText"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:hint="Enter your name" />
</code></pre>

<h3>Example: Accessing User Input in Kotlin:</h3>
<pre><code class="language-kotlin">
val editText = findViewById<EditText>(R.id.editText)
val userInput = editText.text.toString()
</code></pre>

<h2>5. Using ImageView for Displaying Images</h2>
<p><strong>ImageView</strong> is used to display images such as icons or pictures.</p>

<h3>Example: Creating an ImageView:</h3>
<pre><code class="language-xml">
<ImageView
    android:id="@+id/imageView"
    android:layout_width="match_parent"
    android:layout_height="200dp"
    android:src="@drawable/sample_image" />
</code></pre>

<h3>Example: Changing Image Dynamically in Kotlin:</h3>
<pre><code class="language-kotlin">
val imageView = findViewById<ImageView>(R.id.imageView)
imageView.setImageResource(R.drawable.new_image)
</code></pre>
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (11, 4, 'Creating Layouts', 
                                '1. Introduction to Layouts in Android
In Android, layouts are containers that define the structure of the UI by arranging views and UI elements. The most commonly used layouts are LinearLayout and RelativeLayout. Each serves a different purpose for arranging UI elements.

LinearLayout: Arranges children views in a single horizontal or vertical row.
RelativeLayout: Positions children views relative to each other or to the parent container.
2. Using LinearLayout
LinearLayout is a simple layout manager that arranges its children either vertically or horizontally. You can control the orientation using the android:orientation attribute.

Example 1: Vertical LinearLayout
In a vertical LinearLayout, views are arranged one below the other.

XML Layout:

<LinearLayout
    android:id="@+id/linearLayoutVertical"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:padding="16dp">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello, World!"
        android:textSize="18sp" />

    <Button
        android:id="@+id/button"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Click Me" />
</LinearLayout>
Example 2: Horizontal LinearLayout
In a horizontal LinearLayout, views are arranged side by side.

XML Layout:

<LinearLayout
    android:id="@+id/linearLayoutHorizontal"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="horizontal"
    android:padding="16dp">

    <Button
        android:id="@+id/button1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Button 1" />

    <Button
        android:id="@+id/button2"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Button 2" />
</LinearLayout>
Explanation:

android:orientation: Defines the direction (vertical or horizontal) in which child views are laid out.
android:layout_width and android:layout_height: Control the size of the layout and views.
3. Using RelativeLayout
RelativeLayout allows you to position views relative to each other or to the parent container. Views can be aligned to the top, bottom, left, right, or center of the layout.

Example 1: Simple RelativeLayout with Views Positioned Relative to Each Other
XML Layout:

<RelativeLayout
    android:id="@+id/relativeLayout"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:padding="16dp">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Welcome to Android!"
        android:textSize="18sp"
        android:layout_alignParentTop="true"
        android:layout_centerHorizontal="true" />

    <Button
        android:id="@+id/button"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Click Me"
        android:layout_below="@id/textView"
        android:layout_centerHorizontal="true" />
</RelativeLayout>
Explanation:

android:layout_alignParentTop="true": Positions the TextView at the top of the RelativeLayout.
android:layout_below="@id/textView": Positions the Button below the TextView.
android:layout_centerHorizontal="true": Centers the TextView and Button horizontally.
Example 2: Aligning Views to Parent Container in RelativeLayout
XML Layout:

<RelativeLayout
    android:id="@+id/relativeLayout2"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:padding="16dp">

    <Button
        android:id="@+id/buttonLeft"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Left"
        android:layout_alignParentLeft="true"
        android:layout_marginTop="20dp" />

    <Button
        android:id="@+id/buttonRight"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Right"
        android:layout_alignParentRight="true"
        android:layout_marginTop="20dp" />

    <Button
        android:id="@+id/buttonCenter"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Center"
        android:layout_centerInParent="true" />
</RelativeLayout>
Explanation:

android:layout_alignParentLeft="true": Aligns the buttonLeft to the left of the parent.
android:layout_alignParentRight="true": Aligns the buttonRight to the right of the parent.
android:layout_centerInParent="true": Centers the buttonCenter within the parent container.
', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (12, 4, 'Customizing Styles and Themes', 
                                '<h1>1. Introduction to Styles and Themes in Android</h1>
<p>In Android, styles and themes are used to define the appearance of UI elements (like text size, colors, padding, etc.). While styles apply to individual UI components, themes are applied to the entire app or activity, influencing the overall look and feel.</p>
<ul>
    <li><strong>Style:</strong> A set of attributes that define the visual appearance of a single UI element (e.g., Button, TextView).</li>
    <li><strong>Theme:</strong> A collection of styles applied to an entire app or activity to define the global look and feel.</li>
</ul>

<h2>2. Understanding and Creating Styles</h2>
<p>Styles allow you to define reusable sets of properties for individual UI components. This helps you maintain consistency across your app.</p>

<h3>Creating a Style:</h3>
<p>Define a Style in <code>res/values/styles.xml</code>:</p>
<pre><code class="language-xml">
<resources>
    <!-- Defining a custom style for TextView -->
    <style name="CustomTextViewStyle">
        <item name="android:textSize">18sp</item>
        <item name="android:textColor">#FF5722</item>
        <item name="android:fontFamily">sans-serif</item>
    </style>

    <!-- Defining a custom style for Button -->
    <style name="CustomButtonStyle">
        <item name="android:background">@drawable/button_background</item>
        <item name="android:textColor">#FFFFFF</item>
        <item name="android:padding">16dp</item>
    </style>
</resources>
</code></pre>

<h3>Applying the Style to a UI Component in XML:</h3>
<pre><code class="language-xml">
<Button
    android:id="@+id/customButton"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Click Me"
    style="@style/CustomButtonStyle" />
</code></pre>
<p>In this example, the button will use the <code>CustomButtonStyle</code>, which defines its background, text color, and padding.</p>

<h3>Overriding Style Attributes:</h3>
<p>You can override specific attributes of a style for individual components:</p>
<pre><code class="language-xml">
<Button
    android:id="@+id/customButton"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Click Me"
    style="@style/CustomButtonStyle"
    android:textColor="#4CAF50" />
</code></pre>
<p>In this case, <code>textColor</code> will be overridden with the value <code>#4CAF50</code>, while other properties defined in the style will still apply.</p>

<h2>3. Understanding and Creating Themes</h2>
<p>Themes define the overall style for the entire app or specific activity. A theme can include colors, fonts, buttons, and other UI elements that apply globally.</p>

<h3>Creating a Theme:</h3>
<p>Define a Theme in <code>res/values/styles.xml</code>:</p>
<pre><code class="language-xml">
<resources>
    <!-- App-wide theme -->
    <style name="AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">
        <item name="android:colorPrimary">#FF5722</item>
        <item name="android:colorPrimaryDark">#E64A19</item>
        <item name="android:colorAccent">#8BC34A</item>
        <item name="android:textColorPrimary">#212121</item>
        <item name="android:textColorSecondary">#757575</item>
    </style>
</resources>
</code></pre>
<p>In this example, the theme defines:</p>
<ul>
    <li><strong>Primary Color (colorPrimary):</strong> Used for the app’s main interface.</li>
    <li><strong>Primary Dark Color (colorPrimaryDark):</strong> Used for the status bar.</li>
    <li><strong>Accent Color (colorAccent):</strong> Used for highlights, like buttons and floating action buttons.</li>
</ul>

<h3>Applying the Theme:</h3>
<p>Apply Theme in <code>AndroidManifest.xml</code> for the Entire App:</p>
<pre><code class="language-xml">
<application
    android:theme="@style/AppTheme"
    android:label="@string/app_name"
    android:icon="@mipmap/ic_launcher">
    <activity android:name=".MainActivity">
        <!-- You can also apply a theme to specific activities -->
    </activity>
</application>
</code></pre>

<h3>Apply a Theme to an Individual Activity:</h3>
<p>You can also apply a theme to a specific activity by setting it in the <code>&lt;activity&gt;</code> tag in the <code>AndroidManifest.xml</code>:</p>
<pre><code class="language-xml">
<activity android:name=".MainActivity"
    android:theme="@style/CustomActivityTheme">
</activity>
</code></pre>

<h2>4. Working with Color Resources</h2>
<p>You can define colors in the <code>res/values/colors.xml</code> file for consistent usage across your app.</p>

<h3>Define Colors in <code>res/values/colors.xml</code>:</h3>
<pre><code class="language-xml">
<resources>
    <color name="primaryColor">#FF5722</color>
    <color name="primaryDarkColor">#E64A19</color>
    <color name="accentColor">#8BC34A</color>
    <color name="textColorPrimary">#212121</color>
    <color name="textColorSecondary">#757575</color>
</resources>
</code></pre>

<h3>Using Colors in Styles and Themes:</h3>
<p>You can refer to these colors in your styles and themes:</p>
<pre><code class="language-xml">
<resources>
    <style name="AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">
        <item name="android:colorPrimary">@color/primaryColor</item>
        <item name="android:colorPrimaryDark">@color/primaryDarkColor</item>
        <item name="android:colorAccent">@color/accentColor</item>
        <item name="android:textColorPrimary">@color/textColorPrimary</item>
    </style>
</resources>
</code></pre>

<h2>5. Creating and Using Custom Drawables</h2>
<p>Custom drawables (such as images, gradients, and shapes) can be used in buttons, backgrounds, or other UI elements to enhance the visual design.</p>

<h3>Creating a Custom Drawable for Button Background:</h3>
<pre><code class="language-xml">
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@color/colorPrimary" android:state_pressed="true" />
    <item android:drawable="@color/colorAccent" />
</selector>
</code></pre>
<p>This drawable will change the background color of a button when it is pressed.</p>

<h3>Using Custom Drawable in Styles:</h3>
<pre><code class="language-xml">
<style name="CustomButtonStyle">
    <item name="android:background">@drawable/button_background</item>
</style>
</code></pre>

<h2>6. Supporting Dark Mode</h2>
<p>With the introduction of dark mode in Android, you can define different themes for light and dark modes.</p>

<h3>Create Dark and Light Themes:</h3>
<p><strong>Light theme:</strong></p>
<pre><code class="language-xml">
<style name="AppTheme.Light" parent="Theme.AppCompat.Light.DarkActionBar">
    <item name="android:colorPrimary">#FF5722</item>
    <item name="android:colorPrimaryDark">#E64A19</item>
    <item name="android:colorAccent">#8BC34A</item>
</style>
</code></pre>
<p><strong>Dark theme:</strong></p>
<pre><code class="language-xml">
<style name="AppTheme.Dark" parent="Theme.AppCompat.DayNight.DarkActionBar">
    <item name="android:colorPrimary">#212121</item>
    <item name="android:colorPrimaryDark">#000000</item>
    <item name="android:colorAccent">#FF4081</item>
</style>
</code></pre>

<h3>Enable Dark Mode in the App:</h3>
<p>In your <code>AndroidManifest.xml</code>, set the app to use the AppTheme with DayNight support:</p>
<pre><code class="language-xml">
<application
    android:theme="@style/Theme.AppCompat.DayNight">
    <activity android:name=".MainActivity">
    </activity>
</application>
</code></pre>
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (5, 2, 'User Interaction Basics', 
        'Implementing mobile app interactions', 2, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (13, 5, 'Implementing Click Listeners', 
                                '<h1>1. Introduction to Click Listeners</h1>
<p>In Android, a click listener is an event handler that detects when the user taps or clicks on a UI component (such as a button, image, or any clickable element). The most common way to implement click handling is by using the <code>setOnClickListener</code> method.</p>

<h2>Why Click Listeners?</h2>
<ul>
    <li>Respond to user taps or clicks.</li>
    <li>Trigger specific actions when a UI element is clicked (e.g., navigating to another screen, showing a message).</li>
</ul>

<h2>2. Implementing Click Listeners with <code>setOnClickListener</code></h2>
<p>To handle click events, we use the <code>setOnClickListener</code> method on the view (like a Button or ImageView). Here''s how you can implement it in Kotlin:</p>

<h3>Example 1: Handling Button Click</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<Button
    android:id="@+id/buttonClick"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Click Me" />
</code></pre>
<p><strong>Kotlin Code to Handle Click:</strong></p>
<pre><code class="language-kotlin">
// Inside your Activity or Fragment
val button = findViewById<Button>(R.id.buttonClick)

button.setOnClickListener {
    // Action to be performed when button is clicked
    Toast.makeText(this, "Button clicked!", Toast.LENGTH_SHORT).show()
}
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>findViewById<Button>(R.id.buttonClick)</code>: Finds the button by its ID.</li>
    <li><code>setOnClickListener { }</code>: Sets a listener that listens for click events on the button.</li>
    <li>Inside the listener block, you can define the action that should be triggered (e.g., showing a toast).</li>
</ul>

<h3>Example 2: Handling ImageView Click</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<ImageView
    android:id="@+id/imageViewClick"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:src="@drawable/sample_image" />
</code></pre>
<p><strong>Kotlin Code to Handle Click:</strong></p>
<pre><code class="language-kotlin">
val imageView = findViewById<ImageView>(R.id.imageViewClick)

imageView.setOnClickListener {
    // Action to be performed when image is clicked
    Toast.makeText(this, "Image clicked!", Toast.LENGTH_SHORT).show()
}
</code></pre>

<h2>3. Implementing Long Click Listeners</h2>
<p>A long click is a touch event where the user presses and holds an element for a longer duration. To handle this, you can use <code>setOnLongClickListener</code>.</p>

<h3>Example 1: Handling Long Click on Button</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<Button
    android:id="@+id/buttonLongClick"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Long Click Me" />
</code></pre>
<p><strong>Kotlin Code to Handle Long Click:</strong></p>
<pre><code class="language-kotlin">
val buttonLongClick = findViewById<Button>(R.id.buttonLongClick)

buttonLongClick.setOnLongClickListener {
    // Action to be performed on long click
    Toast.makeText(this, "Button long clicked!", Toast.LENGTH_SHORT).show()
    true  // Return true to indicate the event was handled
}
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>The <code>setOnLongClickListener</code> method is used to detect long clicks.</li>
    <li>The method returns <code>true</code> to indicate that the long click event has been handled. If <code>false</code> is returned, the event may also trigger a regular click.</li>
</ul>
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (14, 5, 'Creating Forms and Input Fields', 
                                '<h1>1. Introduction to Forms and Input Fields in Android</h1>
<p>Forms are essential in mobile apps for gathering user input, such as text, numbers, choices, or dates. Android provides a variety of UI components for creating interactive and user-friendly forms.</p>

<h2>Common input fields in Android:</h2>
<ul>
    <li><strong>EditText:</strong> For single-line or multi-line text input.</li>
    <li><strong>RadioButton:</strong> For selecting one option from a group.</li>
    <li><strong>CheckBox:</strong> For selecting multiple options.</li>
    <li><strong>Spinner:</strong> For selecting an item from a drop-down list.</li>
    <li><strong>Button:</strong> For submitting the form or performing an action.</li>
</ul>

<h2>2. Creating Text Input Fields with EditText</h2>
<p>The most common input field in forms is EditText, used for capturing text from the user.</p>

<h3>Example 1: Single-line Text Input (Username Field)</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<EditText
    android:id="@+id/editTextUsername"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:hint="Enter your username"
    android:inputType="text" />
</code></pre>
<p><strong>Kotlin Code to Capture Input:</strong></p>
<pre><code class="language-kotlin">
val usernameEditText = findViewById<EditText>(R.id.editTextUsername)
val username = usernameEditText.text.toString()
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>android:inputType="text"</code>: Specifies that the input is a regular text string.</li>
    <li><code>text.toString()</code>: Retrieves the text entered by the user.</li>
</ul>

<h3>Example 2: Multi-line Text Input (Comment Field)</h3>
<pre><code class="language-xml">
<EditText
    android:id="@+id/editTextComment"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:hint="Enter your comment"
    android:inputType="textMultiLine"
    android:lines="4"
    android:maxLines="6"
    android:scrollbars="vertical" />
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>android:inputType="textMultiLine"</code>: Specifies that the input field can accept multiple lines of text.</li>
    <li><code>android:lines</code> and <code>android:maxLines</code>: Define the minimum and maximum number of visible lines in the text field.</li>
</ul>

<h2>3. Using RadioButton for Single Choice Selections</h2>
<p>RadioButton is used when you want the user to select one option from a set of predefined options.</p>

<h3>Example: Single Choice Options (Gender Selection)</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<RadioGroup
    android:id="@+id/radioGroupGender"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content">

    <RadioButton
        android:id="@+id/radioMale"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Male" />

    <RadioButton
        android:id="@+id/radioFemale"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Female" />
</RadioGroup>
</code></pre>
<p><strong>Kotlin Code to Capture Selected Option:</strong></p>
<pre><code class="language-kotlin">
val genderGroup = findViewById<RadioGroup>(R.id.radioGroupGender)
val selectedGenderId = genderGroup.checkedRadioButtonId
val selectedGender = findViewById<RadioButton>(selectedGenderId).text.toString()
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>RadioGroup</code>: A container that groups the RadioButton elements together so that only one option can be selected at a time.</li>
    <li><code>checkedRadioButtonId</code>: Returns the ID of the selected RadioButton.</li>
</ul>

<h2>4. Using CheckBox for Multiple Choices</h2>
<p>CheckBox allows users to select one or more options from a list of choices.</p>

<h3>Example: Multiple Choice Options (Hobbies Selection)</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<CheckBox
    android:id="@+id/checkBoxReading"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Reading" />

<CheckBox
    android:id="@+id/checkBoxGaming"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Gaming" />

<CheckBox
    android:id="@+id/checkBoxTraveling"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Traveling" />
</code></pre>
<p><strong>Kotlin Code to Capture Selected Options:</strong></p>
<pre><code class="language-kotlin">
val readingCheckBox = findViewById<CheckBox>(R.id.checkBoxReading)
val gamingCheckBox = findViewById<CheckBox>(R.id.checkBoxGaming)
val travelingCheckBox = findViewById<CheckBox>(R.id.checkBoxTraveling)

val hobbies = mutableListOf<String>()

if (readingCheckBox.isChecked) hobbies.add("Reading")
if (gamingCheckBox.isChecked) hobbies.add("Gaming")
if (travelingCheckBox.isChecked) hobbies.add("Traveling")
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>isChecked</code>: A boolean property that indicates whether the checkbox is checked or not.</li>
    <li>The selected options are stored in a list for further processing.</li>
</ul>

<h2>5. Using Spinner for Dropdown Selections</h2>
<p>A Spinner is used for displaying a dropdown menu, allowing the user to select an option from a list.</p>

<h3>Example: Dropdown Menu for Country Selection</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<Spinner
    android:id="@+id/spinnerCountry"
    android:layout_width="match_parent"
    android:layout_height="wrap_content" />
</code></pre>
<p><strong>Kotlin Code to Set Up Spinner:</strong></p>
<pre><code class="language-kotlin">
val spinnerCountry = findViewById<Spinner>(R.id.spinnerCountry)

val countries = listOf("USA", "Canada", "Mexico", "UK", "Australia")
val adapter = ArrayAdapter(this, android.R.layout.simple_spinner_item, countries)
adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)

spinnerCountry.adapter = adapter

spinnerCountry.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
    override fun onItemSelected(parentView: AdapterView<*>?, view: View?, position: Int, id: Long) {
        val selectedCountry = parentView?.getItemAtPosition(position).toString()
        Toast.makeText(applicationContext, "Selected Country: $selectedCountry", Toast.LENGTH_SHORT).show()
    }

    override fun onNothingSelected(parentView: AdapterView<*>?) {}
}
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>ArrayAdapter</code>: Adapts a list of items (in this case, country names) to be displayed in the Spinner.</li>
    <li><code>onItemSelectedListener</code>: Detects when the user selects an item from the dropdown.</li>
</ul>
', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (15, 5, 'Handling UI Feedback', 
                                '<h1>1. Introduction to UI Feedback</h1>
<p>UI feedback provides users with visual or interactive cues to indicate that their actions have been acknowledged by the app. Proper feedback ensures a smooth and engaging user experience.</p>

<h2>Types of feedback:</h2>
<ul>
    <li><strong>Toasts:</strong> Brief, non-intrusive messages that appear for a short period.</li>
    <li><strong>Snackbars:</strong> Similar to Toasts but can contain actions (e.g., undo).</li>
    <li><strong>Dialogs:</strong> Modal windows for displaying important information or confirming actions.</li>
    <li><strong>Progress Indicators:</strong> Show that a task is ongoing (e.g., loading spinner, progress bar).</li>
    <li><strong>Button State Changes:</strong> Change button appearance based on user interaction.</li>
</ul>

<h2>2. Displaying Brief Feedback with Toasts</h2>
<p>Toasts are used to show short, non-blocking messages to the user. They disappear automatically after a few seconds.</p>

<h3>Example 1: Displaying a Simple Toast</h3>
<p><strong>Kotlin Code:</strong></p>
<pre><code class="language-kotlin">
Toast.makeText(this, "Operation Successful", Toast.LENGTH_SHORT).show()
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>Toast.makeText()</code>: Creates a toast message.</li>
    <li>The first argument is the Context, usually <code>this</code> in an Activity or <code>getContext()</code> in a Fragment.</li>
    <li>The second argument is the message to display.</li>
    <li>The third argument is the duration (<code>Toast.LENGTH_SHORT</code> or <code>Toast.LENGTH_LONG</code>).</li>
</ul>

<h3>Example 2: Displaying a Toast with a Custom Message</h3>
<p><strong>Kotlin Code:</strong></p>
<pre><code class="language-kotlin">
val username = findViewById<EditText>(R.id.editTextUsername).text.toString()
if (username.isEmpty()) {
    Toast.makeText(this, "Please enter a username", Toast.LENGTH_SHORT).show()
} else {
    Toast.makeText(this, "Hello, $username!", Toast.LENGTH_SHORT).show()
}
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>Dynamic content can be inserted into the Toast message.</li>
</ul>

<h2>3. Using Snackbars for Actionable Feedback</h2>
<p>A Snackbar is a more advanced form of feedback compared to a Toast. Snackbars appear at the bottom of the screen and can include an action (e.g., an undo button).</p>

<h3>Example 1: Simple Snackbar with Message</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<Button
    android:id="@+id/buttonShowSnackbar"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Show Snackbar" />
</code></pre>
<p><strong>Kotlin Code to Show Snackbar:</strong></p>
<pre><code class="language-kotlin">
val button = findViewById<Button>(R.id.buttonShowSnackbar)

button.setOnClickListener {
    Snackbar.make(it, "Item deleted", Snackbar.LENGTH_SHORT).show()
}
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>Snackbar.make(view, message, duration)</code>: Creates and shows a Snackbar.</li>
    <li>The first argument is the view (typically the root view) from which the Snackbar will be displayed.</li>
    <li>The second argument is the message you want to show.</li>
    <li>The third argument is the duration (<code>Snackbar.LENGTH_SHORT</code> or <code>Snackbar.LENGTH_LONG</code>).</li>
</ul>

<h3>Example 2: Snackbar with Action</h3>
<pre><code class="language-kotlin">
Snackbar.make(view, "Item deleted", Snackbar.LENGTH_LONG)
    .setAction("UNDO") {
        // Undo action logic here
        Toast.makeText(this, "Undo clicked", Toast.LENGTH_SHORT).show()
    }
    .show()
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>setAction("UNDO", actionListener)</code>: Adds an action (like an undo button) to the Snackbar.</li>
    <li>The <code>actionListener</code> defines what happens when the action is clicked (in this case, showing a Toast message).</li>
</ul>

<h2>4. Displaying Information with Dialogs</h2>
<p>Dialogs are useful for displaying important information or asking for confirmation from the user. Android provides several types of dialogs, such as AlertDialog, ProgressDialog, and custom dialogs.</p>

<h3>Example 1: Basic AlertDialog</h3>
<p>An AlertDialog is a common dialog for simple messages, warnings, or confirmation.</p>

<p><strong>Kotlin Code for AlertDialog:</strong></p>
<pre><code class="language-kotlin">
val builder = AlertDialog.Builder(this)
builder.setTitle("Confirm Deletion")
    .setMessage("Are you sure you want to delete this item?")
    .setPositiveButton("Yes") { dialog, which ->
        // Code for deleting the item
        Toast.makeText(this, "Item deleted", Toast.LENGTH_SHORT).show()
    }
    .setNegativeButton("No") { dialog, which ->
        // Code for canceling the operation
        Toast.makeText(this, "Operation canceled", Toast.LENGTH_SHORT).show()
    }
    .show()
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>setTitle()</code> and <code>setMessage()</code> set the dialog’s title and message.</li>
    <li><code>setPositiveButton()</code> and <code>setNegativeButton()</code> define actions for the positive (e.g., "Yes") and negative (e.g., "No") buttons.</li>
    <li><code>show()</code> displays the dialog.</li>
</ul>

<h3>Example 2: Customizing the Dialog Layout</h3>
<p>You can customize the layout of the dialog by using a custom view.</p>
<pre><code class="language-kotlin">
val dialogView = layoutInflater.inflate(R.layout.custom_dialog, null)
val builder = AlertDialog.Builder(this)
    .setView(dialogView)
    .setPositiveButton("Confirm") { dialog, which ->
        // Handle confirmation
    }
    .setNegativeButton("Cancel") { dialog, which ->
        // Handle cancellation
    }
builder.show()
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>setView(dialogView)</code>: Inflates a custom layout for the dialog.</li>
    <li>Custom layouts allow for more complex dialog designs.</li>
</ul>

<h2>5. Showing Progress Indicators</h2>
<p>Progress indicators are used to inform the user that a process is ongoing, and it can take time to complete (e.g., downloading, uploading).</p>

<h3>Example 1: ProgressBar for Indeterminate Progress</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<ProgressBar
    android:id="@+id/progressBar"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:visibility="gone" />
</code></pre>
<p><strong>Kotlin Code to Show/Hide ProgressBar:</strong></p>
<pre><code class="language-kotlin">
val progressBar = findViewById<ProgressBar>(R.id.progressBar)

// Show progress bar
progressBar.visibility = View.VISIBLE

// Simulate a task
Handler(Looper.getMainLooper()).postDelayed({
    // Hide progress bar after task completion
    progressBar.visibility = View.GONE
}, 2000)
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>Set the visibility of the ProgressBar to <code>View.VISIBLE</code> to show it and <code>View.GONE</code> to hide it.</li>
    <li>You can simulate an operation (e.g., loading) using <code>Handler.postDelayed()</code>.</li>
</ul>

<h3>Example 2: Determinate ProgressBar (Showing Progress Percentage)</h3>
<p><strong>XML Layout:</strong></p>
<pre><code class="language-xml">
<ProgressBar
    android:id="@+id/determinateProgressBar"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:progress="0"
    android:max="100" />
</code></pre>
<p><strong>Kotlin Code to Update Progress:</strong></p>
<pre><code class="language-kotlin">
val progressBar = findViewById<ProgressBar>(R.id.determinateProgressBar)

for (i in 0..100) {
    progressBar.progress = i
    Thread.sleep(50)  // Simulate progress update delay
}
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>The ProgressBar with a max value of 100 is used to show the progress in percentage.</li>
    <li>The progress is updated with <
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (6, 2, 'Responsive Design', 
        'Creating adaptable mobile interfaces', 3, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (16, 6, 'Screen Sizes and Densities', 
                                '<h1>1. Introduction to Screen Sizes and Densities in Android</h1>
<p>Mobile devices come in a wide variety of screen sizes and resolutions, which can impact how an app’s UI looks on different devices. Android provides tools and techniques for building apps that adapt to these different screen configurations, ensuring a consistent user experience.</p>

<h2>Key Concepts:</h2>
<ul>
    <li><strong>Screen Size:</strong> The physical dimensions of the device display (e.g., small, normal, large, extra-large).</li>
    <li><strong>Screen Density:</strong> The number of pixels per inch (PPI) on the screen, which affects the clarity of the display.</li>
    <li><strong>Density-independent Pixels (dp):</strong> A unit of measurement for UI components that ensures consistent sizing across devices with different screen densities.</li>
    <li><strong>Scaled Pixels (sp):</strong> Similar to dp but adjusted for user font size preferences.</li>
</ul>

<h2>2. Understanding Screen Density and Resolution</h2>
<p>Screen density refers to the number of pixels per inch (PPI) on a screen. Android categorizes screen densities into buckets:</p>
<ul>
    <li><strong>ldpi (Low):</strong> 120 dpi</li>
    <li><strong>mdpi (Medium):</strong> 160 dpi (baseline)</li>
    <li><strong>hdpi (High):</strong> 240 dpi</li>
    <li><strong>xhdpi (Extra High):</strong> 320 dpi</li>
    <li><strong>xxhdpi (Extra Extra High):</strong> 480 dpi</li>
    <li><strong>xxxhdpi (Extra Extra Extra High):</strong> 640 dpi</li>
</ul>
<p>Screen Resolution refers to the total number of pixels (width × height) that can be displayed on the screen.</p>

<p><strong>Density-independent Pixels (dp)</strong> are used to ensure consistent layout across devices with different screen densities.</p>

<p><strong>Example:</strong></p>
<pre><code>
A button with a width of 100dp will appear approximately the same physical size on devices with different screen densities.
</code></pre>

<h2>3. Handling Different Screen Sizes</h2>
<p>Android supports multiple screen sizes, such as small phones, medium tablets, large tablets, etc. The platform provides a set of configuration qualifiers that can be used to target different screen sizes.</p>

<h3>Example: Specifying Layouts for Different Screen Sizes</h3>
<p><strong>Default Layout (for mdpi, normal-sized screens):</strong></p>
<pre><code class="language-xml">
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical">
    
    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit" />
</LinearLayout>
</code></pre>

<p><strong>Layout for Large Screens (res/layout-large/):</strong></p>
<pre><code class="language-xml">
<!-- res/layout-large/activity_main.xml -->
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="horizontal">
    
    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit" />

    <!-- More UI elements for larger screen -->
</LinearLayout>
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>Android automatically selects the correct layout based on the screen size of the device.</li>
    <li>Place layouts for large screens inside the <code>res/layout-large/</code> directory, and for extra-large screens, place them inside <code>res/layout-xlarge/</code>.</li>
</ul>

<h3>Example: Using layout-sw600dp/ for Devices with a Minimum Width of 600dp</h3>
<p><strong>Layout for Screens with Minimum Width of 600dp:</strong></p>
<pre><code class="language-xml">
<!-- res/layout-sw600dp/activity_main.xml -->
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">
    
    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit" />
    
    <!-- Other UI elements -->
</LinearLayout>
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>The <code>sw600dp</code> qualifier is used to define layouts for devices with a minimum width of 600dp, typically tablets.</li>
    <li>Android selects the correct layout based on the screen width.</li>
</ul>

<h2>4. Handling Different Screen Densities with Resources</h2>
<p>To ensure that images and other visual elements look crisp on high-density screens, you need to provide different versions of your resources for various screen densities.</p>

<h3>Example: Providing Different Drawable Resources</h3>
<p>Place different versions of your images in the appropriate density-specific folders:</p>
<pre><code class="language-plaintext">
res/drawable-mdpi/ (for medium density screens)
res/drawable-hdpi/ (for high density screens)
res/drawable-xhdpi/ (for extra high density screens)
res/drawable-xxhdpi/ (for extra extra high density screens)
</code></pre>
<p><strong>Folder structure:</strong></p>
<pre><code class="language-plaintext">
res/
    drawable-mdpi/
        image.png
    drawable-hdpi/
        image.png
    drawable-xhdpi/
        image.png
    drawable-xxhdpi/
        image.png
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>When Android displays an image, it automatically selects the appropriate drawable based on the screen density.</li>
    <li>Use high-quality images in higher density folders to ensure crisp visuals on high-density screens.</li>
</ul>

<h2>5. Using dp and sp for Consistent Layouts</h2>
<ul>
    <li><strong>dp (density-independent pixels):</strong> Use dp for defining view dimensions (width, height, margins) to ensure consistency across different screen densities.</li>
    <li><strong>sp (scale-independent pixels):</strong> Use sp for font sizes. This unit respects the user’s font size preferences (e.g., if the user has increased the font size in the system settings).</li>
</ul>

<h3>Example: Using dp and sp for UI Elements</h3>
<p><strong>XML Layout with dp and sp:</strong></p>
<pre><code class="language-xml">
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:padding="16dp"
    android:orientation="vertical">

    <TextView
        android:id="@+id/textViewLabel"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Label"
        android:textSize="18sp" />

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="8dp"
        android:text="Submit" />
</LinearLayout>
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li><code>android:padding="16dp"</code> ensures the padding is consistent across all screen densities.</li>
    <li><code>android:textSize="18sp"</code> ensures the text size respects the user’s preference for font size.</li>
</ul>

<h2>6. Using ConstraintLayout for Flexible and Responsive UIs</h2>
<p>ConstraintLayout is a flexible and powerful layout that allows you to create responsive UIs that adapt to different screen sizes and densities without requiring multiple layout files. It’s especially useful for building UIs that work well across a wide variety of devices.</p>

<h3>Example: Creating a Responsive Layout with ConstraintLayout</h3>
<p><strong>XML Layout with ConstraintLayout:</strong></p>
<pre><code class="language-xml">
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <TextView
        android:id="@+id/textViewLabel"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Welcome"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        android:textSize="20sp" />

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit"
        app:layout_constraintTop_toBottomOf="@id/textViewLabel"
        app:layout_constraintStart_toStartOf="parent" />
</androidx.constraintlayout.widget.ConstraintLayout>
</code></pre>
<h4>Explanation:</
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (17, 6, 'Using Constraint Layouts', 
                                '<h1>1. Introduction to ConstraintLayout</h1>
<p>ConstraintLayout is a powerful, flexible, and efficient layout manager in Android that allows you to create complex UIs with a flat view hierarchy. It is designed to help developers create responsive, adaptable layouts without the need for nested layouts (e.g., LinearLayouts or RelativeLayouts), which can negatively impact performance.</p>

<h2>Key Benefits:</h2>
<ul>
    <li><strong>Flat View Hierarchy:</strong> Reduces the need for nested layouts, improving performance.</li>
    <li><strong>Flexibility:</strong> Allows you to create complex layouts using relative positioning.</li>
    <li><strong>Guidelines:</strong> Helps align elements consistently without relying on fixed margins or paddings.</li>
    <li><strong>Responsive:</strong> Adapts well to different screen sizes and orientations.</li>
</ul>

<h2>2. Basics of ConstraintLayout</h2>
<p>To create a layout with ConstraintLayout, you define constraints on views relative to other views or the parent layout. These constraints specify how the view should be positioned, sized, and aligned.</p>

<h3>Basic Syntax for ConstraintLayout</h3>
<p>Define the layout in XML:</p>
<pre><code class="language-xml">
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <!-- Views go here -->

</androidx.constraintlayout.widget.ConstraintLayout>
</code></pre>

<p>Define constraints on views:</p>
<p>Use <code>app:layout_constraint*</code> attributes to define the relationships between views and their parent or sibling views.</p>

<h3>Example: Basic Layout with ConstraintLayout</h3>
<pre><code class="language-xml">
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent" />

</androidx.constraintlayout.widget.ConstraintLayout>
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>The Button is constrained to the top, start, and end of the parent <code>ConstraintLayout</code>. This makes it centered horizontally and aligned to the top edge of the screen.</li>
</ul>

<h2>3. Working with Constraints</h2>
<p>Constraints define how a view is positioned in the layout relative to other views or its parent container.</p>

<h3>Types of Constraints:</h3>
<h4>Horizontal Constraints:</h4>
<ul>
    <li><code>app:layout_constraintStart_toStartOf="parent"</code>: Positions the view''s left edge to the left edge of the parent.</li>
    <li><code>app:layout_constraintEnd_toEndOf="parent"</code>: Positions the view''s right edge to the right edge of the parent.</li>
    <li><code>app:layout_constraintHorizontal_bias</code>: A float value between 0.0 and 1.0 that adjusts the horizontal position of the view.</li>
</ul>

<h4>Vertical Constraints:</h4>
<ul>
    <li><code>app:layout_constraintTop_toTopOf="parent"</code>: Positions the view’s top edge to the top edge of the parent.</li>
    <li><code>app:layout_constraintBottom_toBottomOf="parent"</code>: Positions the view’s bottom edge to the bottom edge of the parent.</li>
    <li><code>app:layout_constraintVertical_bias</code>: A float value between 0.0 and 1.0 that adjusts the vertical position of the view.</li>
</ul>

<h4>Dimension Constraints:</h4>
<ul>
    <li><code>app:layout_constraintWidth_default</code>: Defines how the width is determined (e.g., wrap_content, match_parent).</li>
    <li><code>app:layout_constraintHeight_default</code>: Defines how the height is determined.</li>
    <li><code>app:layout_constraintDimensionRatio</code>: Specifies a ratio between width and height.</li>
</ul>

<h3>Example: Button with Multiple Constraints</h3>
<pre><code class="language-xml">
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintVertical_bias="0.4" />

</androidx.constraintlayout.widget.ConstraintLayout>
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>This button is constrained to the parent’s top, start, and end edges.</li>
    <li>The <code>Vertical_bias</code> of 0.4 means the button will be positioned 40% of the way down from the top.</li>
</ul>

<h2>4. Using Guidelines for Layout Design</h2>
<p>Guidelines are invisible lines used to position UI elements relative to the layout. They help you align views without having to use fixed margins.</p>

<h3>Adding a Horizontal or Vertical Guideline</h3>
<p><strong>XML Example: Adding a Vertical Guideline</strong></p>
<pre><code class="language-xml">
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <androidx.constraintlayout.widget.Guideline
        android:id="@+id/guidelineVertical"
        android:layout_width="wrap_content"
        android:layout_height="match_parent"
        app:layout_constraintGuide_percent="0.5" />

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintVertical_bias="0.4" />
</androidx.constraintlayout.widget.ConstraintLayout>
</code></pre>

<h4>Explanation:</h4>
<ul>
    <li>The <code>Guideline</code> with the <code>layout_constraintGuide_percent</code> attribute specifies that the guideline should be positioned at 50% of the layout width (the center of the screen).</li>
    <li>The Button can be aligned relative to this guideline.</li>
</ul>
', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (18, 6, 'Adapting to Screen Orientations', 
                                '<h1>1. Understanding Screen Orientations</h1>
<p>Android devices can operate in two primary orientations:</p>
<ul>
    <li><strong>Portrait Mode:</strong> The device is held upright (vertical orientation). This is typically the default orientation.</li>
    <li><strong>Landscape Mode:</strong> The device is rotated 90 degrees, making the screen wider than it is tall.</li>
</ul>

<h2>Why Orientation Matters</h2>
<p>The layout, content, and user interface (UI) elements often need to adapt when switching between orientations to provide an optimal experience.</p>
<ul>
    <li>In portrait mode, content is generally presented in a narrow vertical layout.</li>
    <li>In landscape mode, the device offers more horizontal space, allowing more content to fit or rearrange UI elements for a better experience.</li>
</ul>

<h1>2. Handling Configuration Changes</h1>
<p>When a user switches between portrait and landscape modes, Android triggers a configuration change, causing the activity to be recreated by default. This can lead to performance issues or loss of data if not handled properly.</p>

<h2>Default Behavior</h2>
<ul>
    <li>Android will automatically recreate the activity when the orientation changes.</li>
    <li>All resources, including layout files, images, and other configuration-specific data, will need to be reloaded.</li>
</ul>

<h3>Configuration Change Example:</h3>
<p>For instance, when the device rotates from portrait to landscape, the activity is recreated, and the layout is replaced with one designed specifically for landscape mode (if provided).</p>

<h1>3. Preventing Activity Recreation (Optional)</h1>
<p>In certain cases, you might want to retain the current state and prevent the activity from being recreated on orientation changes. This can be achieved by handling the configuration changes explicitly in the manifest file.</p>

<h3>Example: Configuring to Prevent Recreation</h3>
<pre><code class="language-xml">
<activity
    android:name=".MainActivity"
    android:configChanges="orientation|keyboardHidden|screenSize"
    android:screenOrientation="unspecified">
</activity>
</code></pre>
<h4>Explanation:</h4>
<ul>
    <li>The <code>android:configChanges</code> attribute tells Android that the activity will handle configuration changes like orientation, keyboard visibility, and screen size changes manually.</li>
    <li>This means Android will not recreate the activity but will instead call <code>onConfigurationChanged()</code> in your activity.</li>
</ul>

<h3>Handling the Configuration Change in Code</h3>
<p>If you choose to handle configuration changes manually, override the <code>onConfigurationChanged()</code> method in your activity:</p>
<pre><code class="language-kotlin">
override fun onConfigurationChanged(newConfig: Configuration) {
    super.onConfigurationChanged(newConfig)
    if (newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE) {
        // Handle landscape mode
    } else if (newConfig.orientation == Configuration.ORIENTATION_PORTRAIT) {
        // Handle portrait mode
    }
}
</code></pre>
<p><strong>Note:</strong> While this prevents the activity from being recreated, it’s generally recommended to let Android handle orientation changes unless there''s a specific reason to avoid recreation (e.g., to maintain a complex UI state or perform intensive background tasks).</p>

<h1>4. Using Resource Directories for Different Orientations</h1>
<p>Android allows you to provide separate resources (layouts, images, etc.) for different screen orientations. You can define orientation-specific layouts in the <code>res/</code> directory using qualifiers like <code>layout-land</code> for landscape mode.</p>

<h3>Creating Layouts for Portrait and Landscape</h3>
<p><strong>Portrait Layout</strong> (<code>res/layout/</code>): This layout will be used when the device is in portrait mode.</p>
<pre><code class="language-xml">
<!-- res/layout/activity_main.xml -->
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">
    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Portrait Mode" />
</LinearLayout>
</code></pre>

<p><strong>Landscape Layout</strong> (<code>res/layout-land/</code>): This layout will be used when the device is in landscape mode.</p>
<pre><code class="language-xml">
<!-- res/layout-land/activity_main.xml -->
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="horizontal">
    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Landscape Mode" />
</LinearLayout>
</code></pre>

<h4>Explanation:</h4>
<ul>
    <li>Android will automatically select the appropriate layout based on the device''s current orientation.</li>
    <li>The <code>layout-land</code> directory contains layout files that will be used when the device is in landscape mode, while the <code>layout</code> directory contains the default layout for portrait mode.</li>
</ul>

<h1>5. Designing Flexible Layouts</h1>
<p>To ensure your app adapts well to both orientations, it is essential to design flexible layouts that make use of ConstraintLayout, LinearLayout, and RelativeLayout to arrange UI elements dynamically.</p>

<h2>Using ConstraintLayout for Responsive Layouts</h2>
<p>You can use ConstraintLayout to design layouts that adjust to both portrait and landscape orientations without the need for completely separate XML files.</p>

<h3>XML Example (Flexible Layout with ConstraintLayout)</h3>
<pre><code class="language-xml">
<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Responsive Text"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent" />

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit"
        app:layout_constraintTop_toBottomOf="@id/textView"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintEnd_toEndOf="parent" />
    
</androidx.constraintlayout.widget.ConstraintLayout>
</code></pre>

<h4>Explanation:</h4>
<ul>
    <li>The TextView and Button are constrained to the parent layout, ensuring they are centered on both portrait and landscape screens.</li>
    <li>The use of ConstraintLayout ensures the UI components will dynamically adjust their positions based on the screen size and orientation.</li>
</ul>

<h2>Using LinearLayout with weight for Flexibility</h2>
<p>Another approach is to use a LinearLayout with <code>android:weightSum</code> and <code>layout_weight</code> to distribute space proportionally between UI components.</p>

<h3>XML Example (Using LinearLayout for Flexible Layout)</h3>
<pre><code class="language-xml">
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <TextView
        android:id="@+id/textView"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Text View"
        android:layout_weight="1" />

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Submit" />

</LinearLayout>
</code></pre>

<h4>Explanation:</h4>
<ul>
    <li>In portrait mode, the TextView takes up more space because of the <code>layout_weight="1"</code>.</li>
    <li>When switching to landscape mode, the layout remains flexible and adapts by resizing based on available space.</li>
</ul>

<h1>6. Managing View States Across Orientations</h1>
<p>If your app maintains state (e.g., user input, scroll position, etc.), ensure that this state is preserved when switching orientations.</p>

<h2>Saving Instance State</h2>
<p>Override <code>onSaveInstanceState()</code>:</p>
<pre><code class="language-kotlin">
override fun onSaveInstanceState(outState: Bundle) {
    super.onSaveInstanceState(outState)
    outState.putString("key_name", "some_value")
}
</code></pre>

<h2>Restore State in <code>onRestoreInstanceState()</code></h2>
<p>Override <code>onRestoreInstanceState()</code>:</p>
<pre><code class="language-kotlin">
override fun onRestoreInstanceState(savedInstanceState: Bundle) {
    super.onRestoreInstanceState(savedInstanceState)
    val savedValue = savedInstanceState.getString("key_name")
}
</code></
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (3, 'Understanding App Architecture', 1, 
        'Fundamentals of mobile app structure', 3, 
        'advanced', 3, 43198, 
        4.84, 107, 
        '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (7, 3, 'Activity Lifecycle', 
        'Understanding Android component lifecycle', 1, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (19, 7, 'What is an Activity?', 
                                '<h1>1. What is an Activity in Android?</h1>
<p>In Android, an Activity represents a single screen or UI (User Interface) that the user can interact with. Each Activity is an entry point for interacting with the user and usually represents a specific screen of the app. For example, the <strong>MainActivity</strong> could represent the app''s home screen, while other activities may represent login screens, settings, or a photo gallery.</p>

<p>An Activity is primarily concerned with the presentation of content and managing the user interface (UI). It communicates with other components, such as <strong>Fragments</strong>, <strong>Services</strong>, or <strong>Broadcast Receivers</strong>, to implement the app''s functionality.</p>

<h1>2. Core Concepts of Android Activities</h1>
<h2>Activity Lifecycle:</h2>
<p>The Activity Lifecycle governs how an activity transitions between different states. As the user interacts with the app, or the system needs to manage resources (like when switching between apps), the activity goes through various stages, from creation to destruction. Understanding this lifecycle is essential to manage app behavior efficiently.</p>

<h2>Single Activity:</h2>
<p>Most Android apps are built with a single activity that contains different fragments or screens. However, large apps might have multiple activities to handle different parts of the app. Each activity operates independently but can communicate with other activities via <strong>Intents</strong>.</p>

<h2>Intents:</h2>
<p><strong>Intents</strong> are used to launch activities and communicate between components (like opening a new activity from an existing one, passing data, etc.). Intents can also be used to invoke other app components, such as services or broadcast receivers.</p>

<h2>UI Management:</h2>
<p>Activities are responsible for managing and displaying the app''s UI. The UI components are typically defined in XML layout files (e.g., <code>activity_main.xml</code>) and are inflated in the <code>onCreate()</code> method using <code>setContentView()</code>.</p>
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (20, 7, 'Lifecycle Methods', 
                                '<h1>1. Introduction to Activity Lifecycle Methods</h1>
<p>In Android, an Activity goes through various states during its lifespan, and these states are controlled by specific lifecycle methods. Each method in the lifecycle is called when the activity reaches a particular stage, allowing the developer to manage resources, data, and UI updates as the activity transitions from one state to another.</p>

<p>Understanding how and when to use these lifecycle methods is critical to creating smooth and efficient Android applications.</p>

<h1>2. Activity Lifecycle Stages</h1>
<p>The Activity lifecycle consists of the following stages: Creation, Running, Paused, Stopped, and Destroyed. Each stage corresponds to a group of methods that Android calls at specific points during the activity’s life.</p>

<h2>Here’s a breakdown of the key lifecycle methods:</h2>

<h3>2.1. onCreate()</h3>
<p><strong>Purpose:</strong> Called when the activity is first created.</p>
<p><strong>Action:</strong> Use this method to initialize the activity, set up the UI, and perform any one-time setup tasks.</p>
<p><strong>When to Use:</strong> Set up your UI components, initialize variables, and perform actions that should only happen once.</p>
<pre><code>override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_main)
    // Initialize UI components and data
}</code></pre>

<h3>2.2. onStart()</h3>
<p><strong>Purpose:</strong> Called when the activity is becoming visible to the user. It is called right after onCreate() and whenever the activity is brought back to the foreground.</p>
<p><strong>Action:</strong> The activity is now visible but not yet interactive. You can use this method to initialize animations, update UI elements, or start services.</p>
<p><strong>When to Use:</strong> Start tasks that should begin when the activity is visible but not yet in the foreground.</p>
<pre><code>override fun onStart() {
    super.onStart()
    // Perform tasks that need to start as the activity becomes visible
}</code></pre>

<h3>2.3. onResume()</h3>
<p><strong>Purpose:</strong> Called when the activity is in the foreground and the user can interact with it.</p>
<p><strong>Action:</strong> This is where you make the activity interactive. It’s where you should start tasks that require interaction with the user, such as animations, data updates, or registering event listeners.</p>
<p><strong>When to Use:</strong> Resume ongoing tasks, start animations, and register listeners for UI elements like buttons.</p>
<pre><code>override fun onResume() {
    super.onResume()
    // Activity is now interactive
}</code></pre>

<h3>2.4. onPause()</h3>
<p><strong>Purpose:</strong> Called when the system is about to resume another activity, or when the current activity is no longer in the foreground.</p>
<p><strong>Action:</strong> Use this method to pause tasks that shouldn’t continue while the activity is not in focus, such as stopping animations, saving user input, or pausing a video.</p>
<p><strong>When to Use:</strong> Save data, stop ongoing tasks (such as video playback), or release resources that are not needed while the activity is paused.</p>
<pre><code>override fun onPause() {
    super.onPause()
    // Pause tasks that should not run while the activity is in the background
}</code></pre>

<h3>2.5. onStop()</h3>
<p><strong>Purpose:</strong> Called when the activity is no longer visible to the user.</p>
<p><strong>Action:</strong> This method is used to release resources and save data that should be persisted across activity sessions. If you need to stop long-running tasks or close connections, this is the place to do it.</p>
<p><strong>When to Use:</strong> Free resources, stop background tasks, and save application data.</p>
<pre><code>override fun onStop() {
    super.onStop()
    // Release resources or save data before the activity is stopped
}</code></pre>

<h3>2.6. onRestart()</h3>
<p><strong>Purpose:</strong> Called when the activity is coming back to the foreground after being stopped.</p>
<p><strong>Action:</strong> This is the point where you reinitialize resources, update the UI, or restore any data that may have been paused.</p>
<p><strong>When to Use:</strong> Reinitialize UI elements, restore data that might have been paused.</p>
<pre><code>override fun onRestart() {
    super.onRestart()
    // Restore data or UI components after the activity has been stopped
}</code></pre>

<h3>2.7. onDestroy()</h3>
<p><strong>Purpose:</strong> Called when the activity is about to be destroyed.</p>
<p><strong>Action:</strong> Clean up any resources that were allocated for the activity (e.g., database connections, listeners, or services). This is the last method called before the activity is completely removed from memory.</p>
<p><strong>When to Use:</strong> Clean up resources, stop background services, or release any allocated memory.</p>
<pre><code>override fun onDestroy() {
    super.onDestroy()
    // Clean up resources to prevent memory leaks
}</code></pre>
', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (21, 7, 'Handling Configuration Changes', 
                                '<h1>1. Introduction to Configuration Changes</h1>
<p>In Android, configuration changes occur when the device''s environment or state changes. These changes can affect the activity and may cause it to be restarted or re-initialized by the Android system. Common examples of configuration changes include:</p>
<ul>
    <li>Screen rotation (portrait ↔ landscape)</li>
    <li>Language changes (e.g., switching between English and Spanish)</li>
    <li>Keyboard visibility changes (e.g., when the soft keyboard is shown/hidden)</li>
    <li>Screen size or density changes (e.g., when the app is running on a tablet versus a phone)</li>
</ul>
<p>By default, Android restarts activities when certain configuration changes occur, which can lead to loss of UI data (e.g., text entered by the user). Therefore, managing state across these changes is crucial to maintaining a seamless user experience.</p>

<h1>2. Default Behavior for Configuration Changes</h1>
<p>When a configuration change occurs (like a screen rotation), Android destroys and recreates the current activity to adjust to the new configuration. This means:</p>
<ul>
    <li>The <code>onPause()</code>, <code>onStop()</code>, <code>onDestroy()</code>, and <code>onCreate()</code> methods are called as the activity is destroyed and recreated.</li>
    <li>All UI elements and any data held in the activity are lost during this process unless managed properly.</li>
</ul>

<h1>3. Managing Configuration Changes with onSaveInstanceState()</h1>
<p>To prevent the loss of critical data during configuration changes, you can save the activity''s state using <code>onSaveInstanceState()</code>. This method is called before the activity is paused or stopped and is intended for saving transient state information, such as user input or UI states.</p>

<p><strong>When to Use:</strong> Use <code>onSaveInstanceState()</code> to save small pieces of data that you need to restore after a configuration change (e.g., text in a form, current scroll position, etc.).</p>

<h3>Example of saving state:</h3>
<pre><code>override fun onSaveInstanceState(outState: Bundle) {
    super.onSaveInstanceState(outState)
    // Save data that should persist during configuration changes
    outState.putString("user_input", editText.text.toString())
}</code></pre>
<p><strong>Explanation:</strong> In this example, the text entered in the EditText field is saved into the Bundle object, which will be passed to <code>onRestoreInstanceState()</code> when the activity is recreated.</p>

<h1>4. Restoring State with onRestoreInstanceState()</h1>
<p>When the activity is recreated after a configuration change, the saved state can be restored using the <code>onRestoreInstanceState()</code> method or directly in <code>onCreate()</code>.</p>

<p><strong>When to Use:</strong> Use <code>onRestoreInstanceState()</code> to restore data that was saved in <code>onSaveInstanceState()</code> after a configuration change.</p>

<h3>Example of restoring state:</h3>
<pre><code>override fun onRestoreInstanceState(savedInstanceState: Bundle) {
    super.onRestoreInstanceState(savedInstanceState)
    // Restore saved data
    val userInput = savedInstanceState.getString("user_input")
    editText.setText(userInput)
}</code></pre>
<p><strong>Explanation:</strong> Here, the text that was entered by the user in the EditText field is retrieved from the saved Bundle and set back into the EditText when the activity is recreated.</p>

<h1>5. Handling Configuration Changes Manually</h1>
<p>In some cases, you may want to handle configuration changes manually (instead of the default behavior where the activity is destroyed and recreated). This can be useful for maintaining the state of certain resources (like a network connection) or avoiding costly resource reloading.</p>

<p>To handle configuration changes manually, you need to declare which configuration changes your activity will handle in the <code>AndroidManifest.xml</code> file. For example, if you want to handle screen rotation manually:</p>

<h3>Declare Configuration Changes in Manifest:</h3>
<pre><code>&lt;activity
    android:name=".MainActivity"
    android:configChanges="orientation|screenSize"
    android:label="@string/app_name"&gt;
&lt;/activity&gt;</code></pre>

<h3>Override onConfigurationChanged() Method:</h3>
<p>In your activity, you can override the <code>onConfigurationChanged()</code> method to manually handle changes without destroying and recreating the activity.</p>
<pre><code>override fun onConfigurationChanged(newConfig: Configuration) {
    super.onConfigurationChanged(newConfig)
    // Handle configuration changes manually, such as updating the layout for a new orientation
    if (newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE) {
        // Do something for landscape mode
    } else if (newConfig.orientation == Configuration.ORIENTATION_PORTRAIT) {
        // Do something for portrait mode
    }
}</code></pre>
<p><strong>Explanation:</strong> In this case, Android will not restart the activity when the screen is rotated. Instead, the <code>onConfigurationChanged()</code> method will be called, and the app can handle the changes programmatically.</p>
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (8, 3, 'Navigation Between Screens', 
        'Implementing multi-screen navigation', 2, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (22, 8, 'Creating Multiple Activities', 
                                '<h1>1. Introduction to Multiple Activities</h1>
<p>In Android, an Activity represents a single screen with a user interface. A typical Android application often has multiple activities, each serving a different screen or function. For example, an app might have a login screen, a main screen, and a settings screen.</p>
<p>To create a multi-screen application, you need to understand how to:</p>
<ul>
    <li>Create new activities</li>
    <li>Switch between activities</li>
    <li>Pass data between activities</li>
    <li>Manage activity transitions</li>
</ul>

<h1>2. Creating New Activities</h1>
<p>To add a new activity to your project in Android Studio, follow these steps:</p>
<ol>
    <li>Right-click the <code>src</code> folder → New → Activity → Choose the activity template (e.g., Empty Activity).</li>
    <li>Name your activity and click Finish.</li>
</ol>
<p>This process automatically creates a new Java/Kotlin class (e.g., <code>SecondActivity</code>) and the corresponding XML layout file (e.g., <code>activity_second.xml</code>).</p>

<h3>Example:</h3>
<pre><code>// SecondActivity.kt
class SecondActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_second)
    }
}</code></pre>
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (23, 8, 'Using Intents for Navigation', 
                                '3. Navigating Between Activities
To navigate from one activity to another, you need to use an Intent. An Intent is an abstract description of an operation to be performed and can be used to launch activities.

Example of navigating from MainActivity to SecondActivity:
In MainActivity, create an Intent to start SecondActivity:
// MainActivity.kt
val intent = Intent(this, SecondActivity::class.java)
startActivity(intent)
In SecondActivity, you can add code for the UI or handle data:
// SecondActivity.kt
override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_second)

    // Code for SecondActivity UI and interactions
}
This code creates an intent and starts SecondActivity. When you call startActivity(), Android starts the new activity and switches to it.

', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (24, 8, 'Passing Data Between Screens', 
                                '<h1>4. Passing Data Between Activities</h1>
<p>In many cases, you will want to pass data from one activity to another. You can do this using Intent extras.</p>

<h2>Example of passing data from MainActivity to SecondActivity:</h2>

<h3>Passing data (e.g., a string) via Intent:</h3>

<pre><code>// MainActivity.kt
val intent = Intent(this, SecondActivity::class.java)
intent.putExtra("key_name", "Hello from MainActivity")
startActivity(intent)</code></pre>

<h3>Receiving data in SecondActivity:</h3>

<pre><code>// SecondActivity.kt
override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_second)

    // Receive the data
    val message = intent.getStringExtra("key_name")
    // Use the received data (e.g., display it in a TextView)
    val textView = findViewById<TextView>(R.id.textView)
    textView.text = message
}</code></pre>

<p><strong>Explanation:</strong> The <code>putExtra()</code> method adds data (e.g., a string, integer, etc.) to the Intent. In SecondActivity, you retrieve this data using <code>getStringExtra()</code>.</p>

<h1>5. Managing Activity Results</h1>
<p>Sometimes, you may need to get a result back from another activity. You can use <code>startActivityForResult()</code> to launch an activity and receive a result when it finishes.</p>

<h2>Example of getting a result from an activity:</h2>

<h3>Launching an activity for a result in MainActivity:</h3>

<pre><code>// MainActivity.kt
val intent = Intent(this, SecondActivity::class.java)
startActivityForResult(intent, 1)  // 1 is the request code</code></pre>

<h3>Returning a result in SecondActivity:</h3>

<pre><code>// SecondActivity.kt
val returnIntent = Intent()
returnIntent.putExtra("result", "Data from SecondActivity")
setResult(Activity.RESULT_OK, returnIntent)
finish()  // This ends the activity</code></pre>

<h3>Receiving the result in MainActivity:</h3>

<pre><code>// MainActivity.kt
override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
    super.onActivityResult(requestCode, resultCode, data)
    if (requestCode == 1 && resultCode == Activity.RESULT_OK) {
        val result = data?.getStringExtra("result")
        // Use the result (e.g., display it in a TextView)
        val textView = findViewById<TextView>(R.id.textView)
        textView.text = result
    }
}</code></pre>

<p><strong>Explanation:</strong> <code>startActivityForResult()</code> starts SecondActivity and expects a result back. SecondActivity sends a result using <code>setResult()</code> and finishes the activity, which triggers <code>onActivityResult()</code> in MainActivity.</p>
', 3, 
                                '2024-01-01', '2024-01-02');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (9, 3, 'Local Data Storage', 
        'Techniques for storing app data', 3, 
        '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (25, 9, 'Shared Preferences', 
                                '<h1>1. Introduction to Shared Preferences</h1>
<p>Shared Preferences in Android provide a way to store simple key-value pairs (such as settings, preferences, and user data) in persistent storage. These key-value pairs are stored in XML files, which are accessible across app sessions, making them ideal for storing lightweight data such as:</p>
<ul>
    <li>User preferences (e.g., dark mode preference)</li>
    <li>App settings (e.g., sound on/off)</li>
    <li>Authentication tokens (e.g., user login session)</li>
</ul>
<p>SharedPreferences is a simple way to store data that doesn’t require the complexity of a database or file system.</p>

<h1>2. Creating and Accessing Shared Preferences</h1>
<p>To work with SharedPreferences, you typically need to:</p>
<ol>
    <li>Get a reference to SharedPreferences: Using either the <code>getSharedPreferences()</code> method (for storing multiple sets of preferences) or <code>getPreferences()</code> (for a single activity).</li>
    <li>Write data: Using <code>SharedPreferences.Editor</code> to store key-value pairs.</li>
    <li>Read data: Using <code>SharedPreferences</code> to retrieve data based on the key.</li>
</ol>

<h1>3. Writing Data to Shared Preferences</h1>
<p>You can store data in SharedPreferences by using the <code>SharedPreferences.Editor</code> object. This object provides methods to store various data types such as strings, integers, booleans, floats, and long values.</p>

<h2>Example: Saving user preferences (e.g., storing a theme preference):</h2>
<pre><code>// Getting a reference to SharedPreferences
val sharedPreferences = getSharedPreferences("user_preferences", MODE_PRIVATE)

// Getting the editor to modify SharedPreferences
val editor = sharedPreferences.edit()

// Storing data (key-value pairs)
editor.putString("theme", "dark")   // Saving a string
editor.putBoolean("is_logged_in", true)   // Saving a boolean
editor.putInt("user_age", 25)  // Saving an integer
editor.apply()  // Apply changes asynchronously</code></pre>
<p><strong>Explanation:</strong> In this example, we store three types of data: a string (theme preference), a boolean (user login status), and an integer (user age). The <code>apply()</code> method is used to commit the changes asynchronously. If you want to commit the changes synchronously, you can use <code>commit()</code> instead, but <code>apply()</code> is generally preferred for better performance.</p>

<h1>4. Reading Data from Shared Preferences</h1>
<p>To retrieve data from SharedPreferences, you use the get methods. You must provide the key to look up the value, along with a default value to return if the key is not found.</p>

<h2>Example: Retrieving the saved data:</h2>
<pre><code>// Getting a reference to SharedPreferences
val sharedPreferences = getSharedPreferences("user_preferences", MODE_PRIVATE)

// Retrieving data (with default values)
val theme = sharedPreferences.getString("theme", "light")   // Default value: "light"
val isLoggedIn = sharedPreferences.getBoolean("is_logged_in", false)   // Default value: false
val userAge = sharedPreferences.getInt("user_age", 0)   // Default value: 0

// Use the retrieved values (e.g., set the theme)
println("User''s theme: $theme, logged in: $isLoggedIn, age: $userAge")</code></pre>
<p><strong>Explanation:</strong> The <code>getString()</code>, <code>getBoolean()</code>, and <code>getInt()</code> methods retrieve the saved data based on the provided keys. If the key doesn''t exist, the default value is returned.</p>
', 1, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (26, 9, 'Internal Storage', 
                                '<h1>1. Introduction to Internal Storage</h1>
<p>Android provides several ways to store data on a device, and Internal Storage is one of them. Files saved to the internal storage are private to the app and cannot be accessed by other applications or users. This makes it ideal for storing sensitive data, application settings, or user-generated content.</p>
<ul>
    <li><strong>Private to the app:</strong> Other apps cannot access files stored in the internal storage of your app.</li>
    <li><strong>Persistent across sessions:</strong> Files remain on the device even after the app is closed or the device is restarted.</li>
</ul>
<p>Internal storage is suitable for storing small to medium-sized files like text files, images, and configurations.</p>

<h1>2. Writing Data to Internal Storage</h1>
<p>To write data to internal storage, you use the <code>openFileOutput()</code> method, which creates or opens a file for writing.</p>

<h2>Example: Writing text data to a file</h2>
<pre><code>// Writing to internal storage
val filename = "example.txt"
val fileContent = "This is a test file stored in internal storage."

try {
    val fileOutputStream: FileOutputStream = openFileOutput(filename, MODE_PRIVATE)
    fileOutputStream.write(fileContent.toByteArray())  // Convert text to byte array
    fileOutputStream.close()  // Always close the stream after use
    println("File saved successfully!")
} catch (e: IOException) {
    e.printStackTrace()
}</code></pre>
<p><strong>Explanation:</strong> <code>openFileOutput()</code> is used to create or open a file in the app''s private storage. The second parameter, <code>MODE_PRIVATE</code>, ensures that the file is private to the app. The data is then written to the file in the form of a byte array.</p>

<h1>3. Reading Data from Internal Storage</h1>
<p>To read data from internal storage, use the <code>openFileInput()</code> method, which allows you to open a file and read its contents.</p>

<h2>Example: Reading text data from a file</h2>
<pre><code>// Reading from internal storage
val filename = "example.txt"

try {
    val fileInputStream: FileInputStream = openFileInput(filename)
    val inputStreamReader = InputStreamReader(fileInputStream)
    val bufferedReader = BufferedReader(inputStreamReader)
    val fileContent = bufferedReader.readLine()  // Read the first line of the file
    bufferedReader.close()
    println("File content: $fileContent")
} catch (e: IOException) {
    e.printStackTrace()
}</code></pre>
<p><strong>Explanation:</strong> <code>openFileInput()</code> is used to open the file in read-only mode. The <code>InputStreamReader</code> converts the byte stream into characters, and <code>BufferedReader</code> is used to read the file line by line.</p>
', 2, 
                                '2024-01-01', '2024-01-02');
                        INSERT INTO units (id, module_id, name, content, order_index, 
                                           created_at, updated_at)
                        VALUES (27, 9, 'Basic SQLite Operations', 
                                '<h1>1. Introduction to SQLite in Android</h1>
<p>SQLite is a lightweight, serverless relational database management system that is widely used in mobile app development. It allows developers to store data in a structured format using tables, rows, and columns within the app itself, without needing a network connection to an external server.</p>
<h2>Key Features:</h2>
<ul>
    <li>Stores data in tables with rows and columns.</li>
    <li>Data is persisted even if the app is closed or the device is restarted.</li>
    <li>Ideal for structured, small-to-medium-sized data storage.</li>
    <li>Does not require a network connection.</li>
</ul>
<p>SQLite is integrated into Android, and developers can use it to store data locally in a persistent manner.</p>

<h1>2. Setting Up SQLite Database in Android</h1>
<p>In Android, SQLite is used through a helper class called SQLiteOpenHelper. This class simplifies the management of SQLite databases by providing methods for creating, upgrading, and accessing the database.</p>

<h2>Example: Creating an SQLite database helper class</h2>
<pre><code>// SQLiteOpenHelper class to manage database creation and version management
class MyDatabaseHelper(context: Context) : SQLiteOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION) {

    override fun onCreate(db: SQLiteDatabase) {
        val createTableQuery = "CREATE TABLE $TABLE_NAME (" +
                "$COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT, " +
                "$COLUMN_NAME TEXT, " +
                "$COLUMN_AGE INTEGER)"
        db.execSQL(createTableQuery)
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        // Drop the old table if it exists and create a new one
        db.execSQL("DROP TABLE IF EXISTS $TABLE_NAME")
        onCreate(db)
    }

    companion object {
        const val DATABASE_NAME = "my_database"
        const val DATABASE_VERSION = 1
        const val TABLE_NAME = "users"
        const val COLUMN_ID = "id"
        const val COLUMN_NAME = "name"
        const val COLUMN_AGE = "age"
    }
}</code></pre>
<p><strong>Explanation:</strong> <code>SQLiteOpenHelper</code> provides a constructor to specify the database name, version, and a context. The <code>onCreate()</code> method is called when the database is first created and should define the structure of the database. The <code>onUpgrade()</code> method is used for database version upgrades (e.g., adding new columns or tables).</p>

<h1>3. Inserting Data into SQLite Database</h1>
<p>Once the database is created, you can perform CRUD (Create, Read, Update, Delete) operations. Let''s start with inserting data.</p>

<h2>Example: Inserting data into the database</h2>
<pre><code>// Inserting data into the database
val dbHelper = MyDatabaseHelper(context)
val db = dbHelper.writableDatabase

// Creating a ContentValues object to insert data
val values = ContentValues().apply {
    put(MyDatabaseHelper.COLUMN_NAME, "John Doe")
    put(MyDatabaseHelper.COLUMN_AGE, 30)
}

// Inserting the data into the database
val newRowId = db.insert(MyDatabaseHelper.TABLE_NAME, null, values)
println("New row inserted with ID: $newRowId")</code></pre>
<p><strong>Explanation:</strong> <code>ContentValues</code> is used to store the values that you want to insert. The <code>insert()</code> method is called on the writable database instance to insert the data into the specified table.</p>

<h1>4. Querying Data from SQLite Database</h1>
<p>After inserting data, you can query the database to retrieve records.</p>

<h2>Example: Querying data from the database</h2>
<pre><code>// Querying the database to fetch data
val dbHelper = MyDatabaseHelper(context)
val db = dbHelper.readableDatabase

// Defining the columns you want to retrieve
val projection = arrayOf(MyDatabaseHelper.COLUMN_ID, MyDatabaseHelper.COLUMN_NAME, MyDatabaseHelper.COLUMN_AGE)

// Performing the query
val cursor: Cursor = db.query(
    MyDatabaseHelper.TABLE_NAME,  // Table to query
    projection,                   // Columns to return
    null,                         // WHERE clause (null for all rows)
    null,                         // WHERE args (null for all rows)
    null,                         // GROUP BY
    null,                         // HAVING
    null                          // ORDER BY
)

while (cursor.moveToNext()) {
    val id = cursor.getLong(cursor.getColumnIndexOrThrow(MyDatabaseHelper.COLUMN_ID))
    val name = cursor.getString(cursor.getColumnIndexOrThrow(MyDatabaseHelper.COLUMN_NAME))
    val age = cursor.getInt(cursor.getColumnIndexOrThrow(MyDatabaseHelper.COLUMN_AGE))

    println("ID: $id, Name: $name, Age: $age")
}

cursor.close()</code></pre>
<p><strong>Explanation:</strong> The <code>query()</code> method is used to retrieve data from the database. The <code>Cursor</code> object holds the result of the query, and <code>moveToNext()</code> is used to iterate over the rows returned. <code>getColumnIndexOrThrow()</code> is used to get the index of the columns to fetch their data.</p>
', 3, 
                                '2024-01-01', '2024-01-02');