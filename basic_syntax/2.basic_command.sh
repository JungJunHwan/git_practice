# 현재 working directory, staging area 상태 확인
git status

# .은 모든 변경사항을 의미, 특정파일만을 add 시킬수도 있음
# add는 staging area로 변경사항을 이동함을 의미
git add .
git add 파일(경로포함)

# commit을 통해 메세지 제목과 메시지 내용을 커밋 이력으로 작성
git commit -m "메시지 제목" -m "메시지 내용"

# git commit만 하고 엔터 실행시 vi모드
# 첫줄 : 제목, 두번째줄부터 : 내용
git commit

# add와 commit을 동시에
git commit -am "커밋메시지"

# commit 이력 확인(local 레포의 이력)
git log

# 로그 한줄로 간결히 확인
git log --oneline

# 커밋 이력을 그래프 형태로 조회
git log --graph

# Head 하단의 로드만 보이는 것이 아닌, 모든 로그 조회
# Head는 현재 checkcout 하고있는 커밋을 가리킴
git log --all

# 원격저장소로 업로드
git push origin 브랜치명

# 충돌 발생시 무시하고 강제 push
git push origin main --force

# pull은 원격의 커밋 사항을 로컬로 다운로드(working directory까지 반영)
git pull origin main

# 특정 commit ID로
git checkout 커밋ID

# working directory작업 및 staging area에서의 취소는 UI로 대체

# 가장 최신의 커밋 취소 : working directory changes까지로 reset
git reset head~1
git reset head^

# 버전별(commitID간, bracnh간) 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitID1 commitID2
git diff 브랜치1 브랜치2

# 브랜치 생성
# 현재 checkout 하고있는 브랜치를 기준으로 새로운 브랜치 생성
git branch 브랜치명

# 브랜치 전환
git checkout 브랜치명

# 브랜치 목록 조회
git branch

# origin 브랜치까지 포함하여 조회
git branch --all

# 브랜치 생성과 전환을 동시에
git checkout -b 브랜치명

# 로컬 브랜치 삭제 (feat1)
git branch -D 브랜치명

# git fetch : 원격의 변경사항을 로컬에 가져오되, 병합은 하지 않는것
# 비교 : git pull origin main vs git fetch origin main

# 원격에서 삭제된 브랜치 로컬에 반영 (origin/feat1)
git fetch --all --prune
# 모든 원격 브랜치 정보 fetch
git fetch --all

# 작업중(working directory)인 사항을 임시저장
git stash
# 저장한 최신의 작업목록 꺼내서 적용
git stash pop
# 저장한 작업목록은 놔둔채 작업내용 적용
git stash apply 인덱스번호
# 저장한 작업목록 조회
git stash list
# 저장한 작업내용 상세조회
git stash show -p 인덱스번호
# 저장목록 전체삭제
git stash clear

# tag 관련 명령어
git tag v1.0.0
git tag v1.0.0 -m "상세 설명"

# tag release
# commit push와 상관없으 태그 별도 push
git push origin v1.0.0

# 태그 목록조회
git tag