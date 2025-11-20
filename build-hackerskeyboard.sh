#!/bin/bash

echo "🐾 HackersKeyboard - Flujo de desarrollo"

if [ -z "$1" ]; then
    echo "Uso: ./HackersKeyboard.sh \"mensaje del commit\""
    exit 1
fi

echo "📦 Haciendo commit y push..."
git add .
git commit -m "$1"
git push

echo ""
echo "✅ Código subido a /HackersKeyboard"
echo "🔨 Build iniciándose en: https://github.com/stringmanolo/HackersKeyboard/actions"
echo "⏳ Espera 2-3 minutos y descarga el APK desde GitHub Actions"
echo "📥 Ve a: https://github.com/stringmanolo/HackersKeyboard/actions"


