#!/usr/bin/env ruby

require 'fileutils'

DIRECTORIO_TRABAJO = 'Proyectos'
DIRECTORIO_PUBLICACION = 'docs/proyectos'

module FileUtils
  def self.capitulos
    ls(DIRECTORIO_TRABAJO).select { |entrada| entrada.include? 'Cap.' }
  end

  def self.proyectos(dir_capitulo)
    ls(dir_capitulo).reject { |entrada| entrada =~ /Soluci[oó]n.*/ }
  end

  def self.ls(path)
    Dir["#{path}/*"]
  end

  def self.mkdir!(path)
    if !Dir.exist? path
      mkdir path
    end
  end
end

def crear_proyecto!(dir_proyecto, dir_publicacion)
  nombre_proyecto = "#{File.basename dir_proyecto}.gbp"
  `zip -r "#{nombre_proyecto}" "#{dir_proyecto}"`
  FileUtils.mv nombre_proyecto, dir_publicacion
  puts "¡Proyecto #{nombre_proyecto} creado!"
end

def crear_proyectos!(dir_capitulo)
  nombre_capitulo = File.basename dir_capitulo
  dir_proyectos = FileUtils.proyectos(dir_capitulo)

  puts "[#{nombre_capitulo}] Creando #{dir_proyectos.size} proyectos..."

  dir_publicacion_capitulo = "#{DIRECTORIO_PUBLICACION}/#{nombre_capitulo}"
  FileUtils.mkdir! dir_publicacion_capitulo
  dir_proyectos.each { |proyecto| crear_proyecto! proyecto, dir_publicacion_capitulo }
end

FileUtils.capitulos.each { |dir_capitulo| crear_proyectos! dir_capitulo }