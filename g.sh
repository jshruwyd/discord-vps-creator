#!/bin/bash
echo "Khởi động PaperMC với ${MEMORY} RAM..."
java -Xms$MEMORY -Xmx$MEMORY -jar paper.jar nogui
