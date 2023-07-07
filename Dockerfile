FROM hl7fhir/ig-publisher-base:latest


#install dotnet tool
RUN wget https://download.visualstudio.microsoft.com/download/pr/ac5809b0-7930-4ae9-9005-58f2fd7912f3/4cf0cb18d22a162b33149b1f28a8e045/dotnet-sdk-6.0.410-linux-x64.tar.gz
RUN mkdir -p /home/dotnet && tar zxf dotnet-sdk-6.0.410-linux-x64.tar.gz -C /home/dotnet
ENV DOTNET_ROOT="/home/dotnet"
ENV PATH="${PATH}:/home/dotnet"

#install fhir cli
RUN dotnet tool install -g firely.terminal
ENV PATH="/root/.dotnet/tools:${PATH}"	
RUN fhir install de.basisprofil.r4 1.4.0
RUN fhir inflate --package de.basisprofil.r4

CMD ["bash"]