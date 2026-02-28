cloud-1/
├── ansible/
│   ├── inventory
│   │   └── hosts.ini          # 서버 IP 목록
│   ├── roles/
│   │   ├── docker/            # Docker 설치
│   │   │   └── tasks/
│   │   │       └── main.yml
│   │   └── deploy/            # docker-compose 배포
│   │       ├── tasks/
│   │       │   └── main.yml
│   │       └── files/         # docker-compose.yml 등 파일들
│   └── playbook.yml           # 전체 실행 진입점
│
├── srcs/
│   ├── docker-compose.yml
│   ├── .env                   # DB 비밀번호 등 (gitignore!)
│   ├── nginx/
│   │   ├── Dockerfile
│   │   └── conf/
│   │       └── nginx.conf
│   ├── wordpress/
│   │   └── Dockerfile
│   └── db/
│       └── Dockerfile
│
├── .gitignore                 # .env 반드시 포함
└── README.md
