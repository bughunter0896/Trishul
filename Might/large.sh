gpath=./go/bin/
results=./Results/$domain
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

for domain in $(cat $1); do

    echo '-----------------------------------------------------'
    echo "${red} Testing : ${green} ${domain} ${reset}"
    echo '-----------------------------------------------------'
# Performing Subdomain Enumeration
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Subdomain Enumeration ${reset}"
    echo '-----------------------------------------------------'
    ./subdomain.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Subdomain Enumeration 

# Performing Subdomain Bruteforcing
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Subdomain Bruteforcing ${reset}"
    echo '-----------------------------------------------------'
    ./subbruter.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Subdomain Bruteforcing

# Performing Probing
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Probing ${reset}"
    echo '-----------------------------------------------------'
    ./prober.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Probing

# Performing Template Scanning with Nuclei
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Template Scanning with Nuclei ${reset}"
    echo '-----------------------------------------------------'
    ./nuclear.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Template Scanning with Nuclei

# Performing Port Scanning with Naabu
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Port Scanning with Naabu ${reset}"
    echo '-----------------------------------------------------'
    ./portscan.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Port Scanning with Naabu

# Performing URL Extraction
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} URL Extraction ${reset}"
    echo '-----------------------------------------------------'
    ./extractor.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished URL Extraction

# Performing Vulnerable Pattern Search
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Vulnerable Pattern Search ${reset}"
    echo '-----------------------------------------------------'
    ./pattern.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Vulnerable Pattern Search

# Performing Parameter Discovery
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Parameter Discovery ${reset}"
    echo '-----------------------------------------------------'
    ./parameter.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Parameter Discovery

# Performing XSS Automation
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} XSS Automation ${reset}"
    echo '-----------------------------------------------------'
    ./autoxss.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished XSS Automation

# Performing GitHub Scanning 
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} GitHub Scanning ${reset}"
    echo '-----------------------------------------------------'
    ./gitter.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished GitHub Scanning

# Performing FavIcon Hash Extraction
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing FavIcon Hash Extraction ${reset}"
    echo '-----------------------------------------------------'
    ./faver.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished FavIcon Hash Extraction

# Performing Javascript Scan
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Javascript Scan ${reset}"
    echo '-----------------------------------------------------'
    ./jscan.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Javascript Scan


# Performing Secret Finder
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing Secret Finder ${reset}"
    echo '-----------------------------------------------------'
    ./secrets.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Secret Finder

# Performing Directory Fuzzing
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing Directory Fuzzing ${reset}"
    echo '-----------------------------------------------------'
    ./dirfuzz.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Directory Fuzzing 

# Performing CORS Scan
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing CORS Scan ${reset}"
    echo '-----------------------------------------------------'
    ./corser.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished CORS Scan

# Performing HeartBleed Scan
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing HeartBleed Scan ${reset}"
    echo '-----------------------------------------------------'
    ./bleed.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished HeartBleed Scan

# Finished Recon 
    echo '-----------------------------------------------------'
    echo "${red} Finished Recon on: ${green} ${domain} ${reset}"
    echo '-----------------------------------------------------'

done
