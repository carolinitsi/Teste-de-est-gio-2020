-- 1 CRIAÇÃO DAS TABELAS --

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `texto` text NOT NULL,
  `criacao` timestamp NOT NULL DEFAULT current_timestamp(),
  `atualizacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
)

CREATE TABLE `comentarios` (
  `id_cmt` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `mensagem` varchar(50) NOT NULL,
  `criacao_cmt` timestamp NOT NULL DEFAULT current_timestamp(),
  `atualizacao_cmt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) 

-- 2 POPULANDO AS TABELAS --

INSERT INTO `posts` (`id_post`, `autor`, `titulo`, `texto`, `criacao`, `atualizacao`) VALUES
(1, 'joana', 'aqui é titulo', 'aqui é texto', '2020-02-28 21:08:31', '2020-02-28 21:26:52'),
(2, 'Ana', 'O poema', 'batatinha quando nasce...', '2020-02-28 22:22:41', '2020-02-28 22:22:41'),
(3, 'Nicholas', 'O melhor de mim', 'texto texto texto', '2020-02-28 22:23:34', '2020-02-28 22:23:34'),
(4, 'Tais', 'A mentira', 'texto texto texto texto', '2020-02-28 22:24:21', '2020-02-28 22:24:21'),
(5, 'John', 'Cidades de papel', 'conteudo conteudo conteudo', '2020-02-28 22:25:30', '2020-02-28 22:25:30');

INSERT INTO `comentarios` (`id_cmt`, `post_id`, `autor`, `mensagem`, `criacao_cmt`, `atualizacao_cmt`) VALUES
(1, 1, 'André', 'ótimo post!', '2020-02-28 22:27:10', '2020-02-28 22:27:10'),
(2, 5, 'Mari', 'Amei seu post', '2020-02-28 22:32:40', '2020-02-28 22:32:40'),
(3, 3, 'Julia', 'Conteudo maravilhoso!', '2020-02-28 22:33:25', '2020-02-28 22:33:25'),
(4, 1, 'Karen', 'muito bom!', '2020-02-28 22:42:06', '2020-02-28 22:42:06');

-- 3 POSTS ORDENADOS POR TITULO --

SELECT * FROM posts ORDER BY titulo;

-- 4 POSTS E SEUS RESPECTIVOS COMENTARIOS --

select * FROM posts, comentarios WHERE posts.id_post = comentarios.post_id;

