.class public Landroid/app/IconPackHelper$IconCustomizer;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconCustomizer"
.end annotation


# static fields
.field private static synthetic -android_app_ComposedIconInfo$SwatchTypeSwitchesValues:[I

.field private static final sIconCacheManager:Lorg/cyanogenmod/internal/themes/IIconCacheManager;

.field private static final sRandom:Ljava/util/Random;


# direct methods
.method private static synthetic -getandroid_app_ComposedIconInfo$SwatchTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/app/IconPackHelper$IconCustomizer;->-android_app_ComposedIconInfo$SwatchTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/IconPackHelper$IconCustomizer;->-android_app_ComposedIconInfo$SwatchTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/ComposedIconInfo$SwatchType;->values()[Landroid/app/ComposedIconInfo$SwatchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->Muted:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v1}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->MutedDark:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v1}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->MutedLight:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v1}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v1}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->Vibrant:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v1}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->VibrantDark:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v1}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/app/ComposedIconInfo$SwatchType;->VibrantLight:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v1}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->-android_app_ComposedIconInfo$SwatchTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    .line 599
    const-string/jumbo v0, "cmiconcache"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 598
    invoke-static {v0}, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;->asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sIconCacheManager:Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    .line 593
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 810
    :try_start_0
    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sIconCacheManager:Lorg/cyanogenmod/internal/themes/IIconCacheManager;

    invoke-interface {v1, p0, p1}, Lorg/cyanogenmod/internal/themes/IIconCacheManager;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/IconPackHelper;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unable to cache icon."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    const/4 v1, 0x0

    return v1
.end method

.method private static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IILandroid/app/ComposedIconInfo;)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconBack"    # I
    .param p3, "defaultSwatchColor"    # I
    .param p4, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    .line 668
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v21, v0

    if-gtz v21, :cond_0

    const/16 v21, 0x0

    return-object v21

    .line 670
    :cond_0
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 671
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v22, 0x1

    .line 672
    const/16 v23, 0x2

    .line 671
    invoke-direct/range {v21 .. v23}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 674
    const/16 v20, 0x0

    .local v20, "width":I
    const/4 v12, 0x0

    .line 675
    .local v12, "height":I
    const/4 v6, 0x0

    .line 676
    .local v6, "backTintColor":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v17, p0

    .line 677
    check-cast v17, Landroid/graphics/drawable/PaintDrawable;

    .line 678
    .local v17, "painter":Landroid/graphics/drawable/PaintDrawable;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 679
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 682
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v20, v0

    .line 683
    move-object/from16 v0, p4

    iget v12, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    .line 736
    .end local v17    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    if-lez v20, :cond_2

    if-gtz v12, :cond_7

    :cond_2
    const/16 v21, 0x0

    return-object v21

    .line 684
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v8, p0

    .line 686
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 687
    .local v8, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 688
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    if-nez v21, :cond_4

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 691
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 698
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 699
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 700
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 701
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 706
    :goto_1
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    move-object/from16 v21, v0

    sget-object v22, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 707
    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/internal/util/cm/palette/Palette;->generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v18

    .line 708
    .local v18, "palette":Lcom/android/internal/util/cm/palette/Palette;
    invoke-static {}, Landroid/app/IconPackHelper$IconCustomizer;->-getandroid_app_ComposedIconInfo$SwatchTypeSwitchesValues()[I

    move-result-object v21

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    goto/16 :goto_0

    .line 719
    :pswitch_0
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getMutedColor(I)I

    move-result v6

    goto/16 :goto_0

    .line 703
    .end local v18    # "palette":Lcom/android/internal/util/cm/palette/Palette;
    :cond_5
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v20, v0

    .line 704
    move-object/from16 v0, p4

    iget v12, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    goto :goto_1

    .line 710
    .restart local v18    # "palette":Lcom/android/internal/util/cm/palette/Palette;
    :pswitch_1
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getVibrantColor(I)I

    move-result v6

    goto/16 :goto_0

    .line 713
    :pswitch_2
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getLightVibrantColor(I)I

    move-result v6

    goto/16 :goto_0

    .line 716
    :pswitch_3
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getDarkVibrantColor(I)I

    move-result v6

    goto/16 :goto_0

    .line 722
    :pswitch_4
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getLightMutedColor(I)I

    move-result v6

    goto/16 :goto_0

    .line 725
    :pswitch_5
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/cm/palette/Palette;->getDarkMutedColor(I)I

    move-result v6

    goto/16 :goto_0

    .line 732
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v18    # "palette":Lcom/android/internal/util/cm/palette/Palette;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/VectorDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 733
    move-object/from16 v0, p4

    iget v12, v0, Landroid/app/ComposedIconInfo;->iconSize:I

    move/from16 v20, v12

    goto/16 :goto_0

    .line 739
    :cond_7
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 738
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 740
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 743
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 744
    .local v14, "oldBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 745
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 746
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 747
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v11, v21, v22

    .line 748
    .local v11, "halfWidth":F
    int-to-float v0, v12

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    .line 749
    .local v10, "halfHeight":F
    move-object/from16 v0, p4

    iget v4, v0, Landroid/app/ComposedIconInfo;->iconRotation:F

    .line 750
    .local v4, "angle":F
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_8

    .line 751
    sget-object v21, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v22, v22, v23

    mul-float v21, v21, v22

    .line 752
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    move/from16 v22, v0

    .line 751
    sub-float v21, v21, v22

    add-float v4, v4, v21

    .line 754
    :cond_8
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconScale:F

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconScale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1, v11, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 755
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconTranslationX:F

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconTranslationY:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 756
    invoke-virtual {v9, v4, v11, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 757
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 758
    const/4 v15, 0x0

    .line 759
    .local v15, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v21, p0

    .line 760
    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .line 764
    .end local v15    # "p":Landroid/graphics/Paint;
    :cond_9
    :goto_2
    if-eqz v15, :cond_a

    new-instance v21, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 766
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 767
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 770
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconMask:I

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 771
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconMask:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 772
    .local v13, "mask":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_b

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v21, v13

    .line 774
    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v21

    .line 775
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 774
    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 776
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 780
    .end local v13    # "mask":Landroid/graphics/drawable/Drawable;
    :cond_b
    if-eqz p2, :cond_d

    .line 781
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 782
    .local v5, "back":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_d

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v21, v5

    .line 784
    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v16

    .line 786
    .local v16, "paint":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 785
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 787
    if-eqz v6, :cond_c

    .line 788
    new-instance v21, Landroid/graphics/PorterDuffColorFilter;

    .line 789
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 788
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 791
    :cond_c
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 795
    .end local v5    # "back":Landroid/graphics/drawable/Drawable;
    .end local v16    # "paint":Landroid/graphics/Paint;
    :cond_d
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconUpon:I

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 796
    move-object/from16 v0, p4

    iget v0, v0, Landroid/app/ComposedIconInfo;->iconUpon:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 797
    .local v19, "upon":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_e

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 799
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 802
    .end local v19    # "upon":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 803
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getDensity()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 805
    return-object v7

    .line 761
    .restart local v15    # "p":Landroid/graphics/Paint;
    :cond_f
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v21, p0

    .line 762
    check-cast v21, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .local v15, "p":Landroid/graphics/Paint;
    goto/16 :goto_2

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "density"    # I

    .prologue
    .line 824
    const-string/jumbo v0, "%s_%08x_%d.png"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "density"    # I

    .prologue
    .line 819
    const-string/jumbo v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/app/IconPackHelper;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 820
    invoke-static {p0, p1, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 819
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 605
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p0, v0, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    const/4 v3, 0x0

    .line 610
    if-nez p2, :cond_0

    return-object p0

    .line 611
    :cond_0
    const/4 v0, 0x0

    .line 612
    .local v0, "back":I
    const/4 v2, 0x0

    .line 613
    .local v2, "defaultSwatchColor":I
    iget-object v4, p2, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    sget-object v5, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    if-eq v4, v5, :cond_3

    .line 614
    iget v0, p2, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    .line 615
    iget-object v4, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 616
    iget-object v4, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    .line 617
    sget-object v5, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    iget-object v6, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 616
    aget v2, v4, v5

    .line 622
    :cond_1
    :goto_0
    invoke-static {p0, p1, v0, v2, p2}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IILandroid/app/ComposedIconInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 623
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_2
    return-object v3

    .line 619
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v4, :cond_1

    iget-object v4, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 620
    iget-object v4, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    sget-object v5, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    iget-object v6, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget v0, v4, v5

    goto :goto_0
.end method

.method public static getValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "baseIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v4

    .line 630
    .local v4, "iconInfo":Landroid/app/ComposedIconInfo;
    if-nez v4, :cond_0

    .line 632
    return-void

    .line 634
    :cond_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 635
    .local v6, "tempValue":Landroid/util/TypedValue;
    invoke-virtual {v6, p2}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 636
    const/16 v7, 0x80

    iput v7, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 637
    const v7, -0x7f000001

    and-int/2addr v7, p1

    iput v7, p2, Landroid/util/TypedValue;->data:I

    .line 638
    iget v7, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v5, p1, v7}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 639
    iget-object v7, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const v8, 0x7fffffff

    and-int v3, v7, v8

    .line 640
    .local v3, "hashCode":I
    const/4 v2, 0x0

    .line 642
    .local v2, "defaultSwatchColor":I
    new-instance v7, Ljava/io/File;

    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "back":I
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    sget-object v8, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    if-eq v7, v8, :cond_3

    .line 646
    iget v0, v4, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    .line 647
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v7, v7

    if-lez v7, :cond_1

    .line 648
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    .line 649
    iget-object v8, v4, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v8, v8

    rem-int v8, v3, v8

    .line 648
    aget v2, v7, v8

    .line 657
    :cond_1
    :goto_0
    invoke-static {p3, p0, v0, v2, v4}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IILandroid/app/ComposedIconInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 658
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget v7, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v5, p1, v7}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/app/IconPackHelper$IconCustomizer;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 659
    invoke-static {}, Landroid/app/IconPackHelper;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to cache icon "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p2, v6}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 627
    .end local v0    # "back":I
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    return-void

    .line 651
    .restart local v0    # "back":I
    :cond_3
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v7, :cond_1

    iget-object v7, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v7, v7

    if-lez v7, :cond_1

    .line 652
    iget-object v7, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    iget-object v8, v4, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v8, v8

    rem-int v8, v3, v8

    aget v0, v7, v8

    goto :goto_0
.end method
