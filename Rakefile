load "base.rake"

C_SRCS = FileList["c_src/bdberl_drv.c"]
C_OBJS = FileList["c_src/bdberl_drv.o"]

CLEAN.include %w( c_src/*.o priv/*.so  )
CLOBBER.include %w( c_src/system )

directory 'c_src'

DB_LIB = "c_src/system/lib/libdb.a"

file DB_LIB do
  sh "cd c_src && ./buildlib.sh 2>&1"
end

rule ".o" => ["%X.c"] do |t|
  puts "compiling #{t.source}..."
  sh "gcc -c -Wall -Werror -Ic_src/system/include -I#{erts_dir()}/include #{t.source} -o #{t.name}", :verbose => false
end

task :compile_c => ['c_src'] + C_OBJS do
  puts "linking c_src/bdberl_drv.so..."
  sh "gcc #{erts_link_cflags()} c_src/*.o c_src/system/lib/libdb-*.a -o priv/bdberl_drv.so", :verbose => false
end

task :compile => [DB_LIB, :compile_c]

