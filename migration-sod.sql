ALTER TABLE `booking` ADD `desktopMicrophone` INT (3) NOT NULL AFTER `food`,
ADD `floorMicrophone` INT (3) NOT NULL AFTER `desktopMicrophone`,
ADD `wirelessMicrophone` INT (3) NOT NULL AFTER `floorMicrophone`,
ADD `projector` CHAR(1) NULL AFTER `wirelessMicrophone`,
ADD `presentByComputer` CHAR(1) NULL AFTER `projector`,
ADD `visualizer` CHAR(1) NULL AFTER `presentByComputer`,
ADD `visualizer3D` CHAR(1) NULL AFTER `visualizer`,
ADD `videoPlayer` CHAR(1) NULL AFTER `visualizer3D`,
ADD `takingPictures` CHAR(1) NULL AFTER `videoPlayer`,
ADD `VdoRecord` CHAR(1) NULL AFTER `takingPictures`;
