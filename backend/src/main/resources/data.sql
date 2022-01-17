INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name,img_Uri,img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_960_720.jpg','https://static.thenounproject.com/png/1838451-200.png');

INSERT INTO tb_offer (edition,end_Moment,start_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition,end_Moment,start_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource(title,description,position,img_Uri,type,offer_id) VALUES ('Trilha html','Trilha principal do curso',1,'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_960_720.jpg',1,1);
INSERT INTO tb_resource(title,description,position,img_Uri,type,offer_id) VALUES ('Forum','Tire suas duvidas do curso',2,'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_960_720.jpg',2,1);
INSERT INTO tb_resource(title,description,position,img_Uri,type,offer_id) VALUES ('Lives','Lives exclusivas para a turma',3,'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_960_720.jpg',0,1);

INSERT INTO tb_section(title,description,position,img_Uri,resource_id,prerequesite_id) VALUES ('Capítulo 1','Neste capitulo vamos começar',1,'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_960_720.jpg',1,null);
INSERT INTO tb_section(title,description,position,img_Uri,resource_id,prerequesite_id) VALUES ('Capítulo 2','Neste capitulo vamos continuar',2,'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_960_720.jpg',1,1);
INSERT INTO tb_section(title,description,position,img_Uri,resource_id,prerequesite_id) VALUES ('Capítulo 3','Neste capitulo vamos finalizar',3,'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_960_720.jpg',1,2);

INSERT INTO tb_enrollment(user_id,offer_id,enroll_Moment,refund_Moment,avaliable,only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null,true,false);
INSERT INTO tb_enrollment(user_id,offer_id,enroll_Moment,refund_Moment,avaliable,only_Update) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',null,true,false);

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Aula 1 do cap 1',1,1);
INSERT INTO tb_content(id,text_Content,video_Uri) VALUES (1,'Material de apoio','https://www.youtube.com/watch?v=kxf5P0ejS9s');

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Aula 2 do cap 1',2,1);
INSERT INTO tb_content(id,text_Content,video_Uri) VALUES (2,'','https://www.youtube.com/watch?v=kxf5P0ejS9s');

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Aula 3 do cap 1',3,1);
INSERT INTO tb_content(id,text_Content,video_Uri) VALUES (3,'','https://www.youtube.com/watch?v=kxf5P0ejS9s');

INSERT INTO tb_lesson(title,position,section_id) VALUES ('Tarefa do cap 1',4,1);
INSERT INTO tb_task(id,description,question_Count,approval_Count,weight,due_Date) VALUES (4,'Fazer trabalho',5,4,1.0,TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

INSERT INTO tb_lessons_done(lesson_id,user_id,offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done(lesson_id,user_id,offer_id) VALUES (2,1,1);

INSERT INTO tb_notification(text,moment,read,route,user_id) VALUES('Primeiro feedback: favor revisar',TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z',false,'/offers/1/resource/1/sections/1',1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);
