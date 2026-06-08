#!/bin/bash
# Servidor local mínimo para probar el formulario en desarrollo.
# Uso: ./serve.sh
# Luego abrir las URLs que muestra abajo en el navegador.

cd "$(dirname "$0")"
PORT=8765

echo "════════════════════════════════════════════════════════════════"
echo "  Servidor local del formulario teens corriendo en puerto $PORT"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "  Params (case-insensitive):"
echo "    inf=Ad   → Adolescente   |   inf=Pa   → Padres"
echo "    modo=id  → solo AIDA (link aparte)"
echo ""
echo "  ── INGRESO (TP=0) — 3 links ────────────────────────────────────"
echo "  Adol parte 1:  http://localhost:$PORT/?ID_Pac=TEST&TP=0&inf=Ad"
echo "  Adol parte 2:  http://localhost:$PORT/?ID_Pac=TEST&TP=0&inf=Ad&modo=id"
echo "  Padres:        http://localhost:$PORT/?ID_Pac=TEST&TP=0&inf=Pa"
echo ""
echo "  ── SEGUIMIENTO (TP=3) — 2 links ────────────────────────────────"
echo "  Adol:          http://localhost:$PORT/?ID_Pac=TEST&TP=3&inf=Ad"
echo "  Padres:        http://localhost:$PORT/?ID_Pac=TEST&TP=3&inf=Pa"
echo ""
echo "  ── CIERRE (TP=99) — 3 links ────────────────────────────────────"
echo "  Adol parte 1:  http://localhost:$PORT/?ID_Pac=TEST&TP=99&inf=Ad"
echo "  Adol parte 2:  http://localhost:$PORT/?ID_Pac=TEST&TP=99&inf=Ad&modo=id"
echo "  Padres:        http://localhost:$PORT/?ID_Pac=TEST&TP=99&inf=Pa"
echo ""
echo "  ── Pre-llenar género/edad (opcional) ───────────────────────────"
echo "  Agrega: &genero=F&edad=15"
echo ""
echo "  Ctrl+C para detener el servidor."
echo "════════════════════════════════════════════════════════════════"
echo ""

python3 -m http.server $PORT
