<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Laravel</title>
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;600;800&display=swap" rel="stylesheet">
        
        <style>
            :root {
                --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                --glass-bg: rgba(255, 255, 255, 0.1);
                --glass-border: rgba(255, 255, 255, 0.2);
                --text-color: #ffffff;
            }

            body {
                margin: 0;
                padding: 0;
                font-family: 'Outfit', sans-serif;
                background: var(--primary-gradient);
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                overflow: hidden;
            }

            .container {
                text-align: center;
                padding: 3rem 5rem;
                background: var(--glass-bg);
                backdrop-filter: blur(10px);
                -webkit-backdrop-filter: blur(10px);
                border-radius: 20px;
                border: 1px solid var(--glass-border);
                box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
                animation: fadeInUp 1.2s cubic-bezier(0.2, 0.8, 0.2, 1);
            }

            h1 {
                font-size: 3.5rem;
                font-weight: 800;
                color: var(--text-color);
                margin: 0;
                letter-spacing: -1px;
                background: linear-gradient(to right, #ffffff, #e0e0e0);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                text-shadow: 0 4px 10px rgba(0,0,0,0.1);
            }

            p {
                font-size: 1.2rem;
                font-weight: 300;
                color: rgba(255, 255, 255, 0.8);
                margin-top: 1rem;
                letter-spacing: 1px;
                text-transform: uppercase;
            }

            .circle {
                position: absolute;
                border-radius: 50%;
                filter: blur(80px);
                z-index: -1;
                opacity: 0.6;
                animation: float 10s infinite ease-in-out;
            }

            .c1 {
                width: 300px;
                height: 300px;
                background: #ffecd2;
                top: -100px;
                left: -100px;
            }

            .c2 {
                width: 400px;
                height: 400px;
                background: #fcb69f;
                bottom: -150px;
                right: -100px;
                animation-delay: -5s;
            }

            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(40px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @keyframes float {
                0%, 100% {
                    transform: translateY(0) scale(1);
                }
                50% {
                    transform: translateY(-20px) scale(1.05);
                }
            }
        </style>
    </head>
    <body>
        <div class="circle c1"></div>
        <div class="circle c2"></div>
        
        <div class="container">
            <h1>Hai Namaku Tri Aldy Kurniawan</h1>
        </div>
    </body>
</html>
