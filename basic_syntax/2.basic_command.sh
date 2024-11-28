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
# A를 기준으로 B가 어떤 변경이 있느지를 비교
git diff A B
git diff commitID1 commitID2
git diff 브랜치1 브랜치2