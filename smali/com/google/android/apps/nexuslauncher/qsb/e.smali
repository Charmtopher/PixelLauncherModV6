.class public Lcom/google/android/apps/nexuslauncher/qsb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

.field private final As:Z

.field private final At:[I

.field final Au:Landroid/os/Bundle;

.field private final Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

.field private final Aw:Ljava/lang/String;

.field private Ax:Lcom/android/launcher3/BubbleTextView;

.field private Ay:Z

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/a;ZLjava/lang/String;I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Au:Landroid/os/Bundle;

    .line 98
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    .line 106
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    .line 107
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 108
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->As:Z

    .line 110
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 111
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Aw:Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput p4, p1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EV:I

    .line 113
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 1

    .line 602
    const v0, 0x7f010026

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 603
    invoke-static {p1, p0}, Landroid/support/v4/b/a;->d(II)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;Landroid/content/Context;I)I
    .locals 0

    .line 592
    iget p0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    invoke-static {p0, p2}, Landroid/support/v4/b/a;->f(II)I

    move-result p0

    .line 593
    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/android/launcher3/ItemInfoWithIcon;I)Lcom/google/android/apps/nexuslauncher/search/a/c;
    .locals 4

    .line 527
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/c;-><init>()V

    .line 528
    iget-object v1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->label:Ljava/lang/String;

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "icon_bitmap_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->EE:Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Au:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->EE:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 532
    instance-of v1, p1, Lcom/android/launcher3/AppInfo;

    if-eqz v1, :cond_0

    .line 533
    check-cast p1, Lcom/android/launcher3/AppInfo;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-static {p1, v1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "iconType"

    const-string v2, "app"

    .line 534
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 535
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 536
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 537
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-static {p1, v1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "iconType"

    const-string v3, "deepshortcut"

    .line 538
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "deepshortcut_id"

    .line 539
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 540
    nop

    .line 543
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->tN:Ljava/lang/String;

    .line 544
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.nexuslauncher.search.APP_LAUNCH"

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v3, "predictionRank"

    .line 545
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ED:Ljava/lang/String;

    .line 547
    return-object v0

    .line 541
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic a(ILandroid/graphics/Canvas;)V
    .locals 2

    .line 182
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 183
    neg-int p1, p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 184
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getRecyclerViewContainer()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 186
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 187
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 186
    invoke-direct {p0, p2, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 189
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 190
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    aput v3, v0, v3

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    aget v0, v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    aget p2, p2, v3

    int-to-float p2, p2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->At:[I

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    return-void
.end method

.method private static af(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/b;
    .locals 2

    .line 551
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    .line 553
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    .line 555
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 556
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 557
    const/4 p0, 0x0

    aget p0, v1, p0

    iput p0, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    .line 558
    const/4 p0, 0x1

    aget p0, v1, p0

    iput p0, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    .line 559
    return-object v0
.end method

.method static b(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 5

    .line 563
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 564
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 566
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 567
    const/4 v3, 0x0

    aget v3, v1, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 568
    const/4 v3, 0x1

    aget v1, v1, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr v1, p0

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 569
    return-object v2
.end method

.method private dC()Lcom/android/launcher3/allapps/AllAppsContainerView;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-object v0
.end method

.method private dD()V
    .locals 7

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getWidth()I

    move-result v0

    .line 351
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 352
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 353
    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    .line 354
    iput v1, v2, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    .line 355
    sub-int/2addr v0, v1

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v0, v2, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 358
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dE()V

    .line 360
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dC()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    .line 364
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 365
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dC()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v4

    .line 364
    const/4 v5, 0x0

    const v6, 0x7f040009

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    .line 366
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 367
    iget v4, v2, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    iget v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    div-int/2addr v2, v4

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    iget-object v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 373
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 374
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 372
    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/BubbleTextView;->measure(II)V

    .line 375
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Lcom/android/launcher3/BubbleTextView;->layout(IIII)V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    nop

    .line 380
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->xb:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->wW:Lcom/google/android/apps/nexuslauncher/f;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/f;->cF()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/e/a;

    .line 381
    iget-object v4, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/nexuslauncher/e/a;->a(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/ItemInfoWithIcon;

    move-result-object v3

    .line 382
    if-eqz v3, :cond_2

    .line 383
    invoke-direct {p0, v3, v5}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(Lcom/android/launcher3/ItemInfoWithIcon;I)Lcom/google/android/apps/nexuslauncher/search/a/c;

    move-result-object v3

    .line 384
    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget v3, v3, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    if-ge v5, v3, :cond_3

    .line 389
    :cond_2
    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    .line 394
    return-void
.end method

.method private dE()V
    .locals 4

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 518
    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    .line 519
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    .line 520
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    iget v3, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    .line 521
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    .line 522
    iget v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iput v0, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 524
    return-void
.end method

.method public static synthetic lambda$BXT-w6DYYE2I4JD1dETiKS3s5_Y(Lcom/google/android/apps/nexuslauncher/qsb/e;ILandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(ILandroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public final dB()[B
    .locals 18

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 117
    invoke-static {v2}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EF:I

    .line 118
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v3, 0x7f01002b

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EG:Z

    .line 121
    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->As:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    .line 122
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput v1, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EL:I

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dC()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v4

    iget-object v5, v4, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    check-cast v5, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    iget-object v6, v5, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-object v6, v6, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->yd:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    new-array v9, v7, [Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v9, v8, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_0

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v9, v9, Lcom/google/android/apps/nexuslauncher/search/a/d;->EM:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/ItemInfoWithIcon;

    invoke-direct {v0, v10, v8}, Lcom/google/android/apps/nexuslauncher/qsb/e;->a(Lcom/android/launcher3/ItemInfoWithIcon;I)Lcom/google/android/apps/nexuslauncher/search/a/c;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->isHeaderVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, v5, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->yj:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    move v4, v3

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v1, v4}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/BubbleTextView;

    if-eqz v6, :cond_1

    invoke-virtual {v1, v4}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    iput-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dD()V

    :cond_3
    iget-boolean v4, v5, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ay:Z

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->af(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v1

    add-int/2addr v6, v1

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    goto/16 :goto_8

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dC()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/A;

    iget-object v5, v5, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v6

    new-array v7, v1, [Lcom/android/launcher3/BubbleTextView;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v10, v8

    move v8, v3

    :goto_3
    if-ge v8, v6, :cond_8

    invoke-virtual {v4, v8}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v11

    iget-object v12, v11, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    instance-of v12, v12, Lcom/android/launcher3/BubbleTextView;

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v12

    invoke-virtual {v5, v12, v1}, Landroid/support/v7/widget/D;->getSpanGroupIndex(II)I

    move-result v12

    if-ltz v12, :cond_7

    if-gez v10, :cond_5

    move v10, v12

    goto :goto_4

    :cond_5
    if-eq v12, v10, :cond_6

    iget-object v4, v11, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    move-object v9, v4

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v12, v11, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/C;

    iget v12, v12, Landroid/support/v7/widget/C;->pl:I

    iget-object v11, v11, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    check-cast v11, Lcom/android/launcher3/BubbleTextView;

    aput-object v11, v7, v12

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    aget-object v4, v7, v3

    if-nez v4, :cond_9

    const-string v1, "ConfigBuilder"

    const-string v4, "No icons rendered in all apps"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dD()V

    goto :goto_8

    :cond_9
    aget-object v4, v7, v3

    iput-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    iput-boolean v3, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ay:Z

    sub-int/2addr v1, v2

    aget-object v1, v7, v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->af(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v1

    aget-object v4, v7, v3

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/qsb/e;->af(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v17, v4

    move-object v4, v1

    move-object/from16 v1, v17

    :goto_6
    iget v5, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    iget v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    add-int/2addr v5, v4

    iget v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->left:I

    sub-int/2addr v5, v4

    iput v5, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput-object v1, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ay:Z

    if-nez v4, :cond_b

    iget v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    iget v5, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    goto :goto_7

    :cond_b
    if-eqz v9, :cond_c

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/qsb/e;->af(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v4

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iput v1, v4, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput-object v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EK:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_c
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dE()V

    goto :goto_8

    .line 124
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->dD()V

    .line 127
    :goto_8
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    const-string v4, "icon_view_template"

    iput-object v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    .line 128
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Au:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EH:Ljava/lang/String;

    new-instance v11, Landroid/widget/RemoteViews;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f04000f

    invoke-direct {v11, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    iget v12, v5, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v12

    div-int/lit8 v13, v5, 0x2

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v14

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v12

    sub-int v15, v5, v14

    const v6, 0x1020006

    move-object v5, v11

    move v7, v13

    move v8, v14

    move v9, v13

    move v10, v15

    invoke-virtual/range {v5 .. v10}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v5, 0x3df5c28f    # 0.12f

    int-to-float v6, v12

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const v6, 0x7f0e0039

    sub-int v9, v13, v5

    sub-int v8, v14, v5

    sub-int v10, v15, v5

    move-object v5, v11

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    const v6, 0x1020016

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {v11, v6, v3, v5}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v7

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    iget v5, v5, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v8}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ax:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v9

    const/4 v10, 0x0

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    invoke-virtual {v1, v4, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    const-string v4, "icon_long_click"

    iput-object v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    .line 132
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const-class v5, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Au:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/search/a/d;->EI:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/16 v7, 0x807

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 135
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v8, 0x48000000    # 131072.0f

    .line 134
    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 133
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->a(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    .line 139
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/qsb/e;->af(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EN:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 141
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->As:Z

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    goto :goto_9

    :cond_e
    move v4, v3

    :goto_9
    iput-boolean v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->ET:Z

    .line 142
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->ET:Z

    if-eqz v1, :cond_1c

    .line 143
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    const-string v4, "search_box_template"

    iput-object v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Au:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/search/a/d;->EO:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-boolean v5, v5, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-eqz v5, :cond_f

    const v5, 0x7f040012

    goto :goto_a

    :cond_f
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-boolean v5, v5, Lcom/google/android/apps/nexuslauncher/qsb/a;->zY:Z

    if-eqz v5, :cond_10

    const v5, 0x7f040011

    goto :goto_a

    :cond_10
    const v5, 0x7f040010

    :goto_a
    new-instance v12, Landroid/widget/RemoteViews;

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getHeight()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    const/16 v13, 0x14

    add-int/2addr v5, v13

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dl()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getHeight()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v7}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v7

    sub-int v15, v7, v6

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v7}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v7

    sub-int v16, v7, v6

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-boolean v6, v6, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-nez v6, :cond_11

    const v7, 0x7f0e003a

    move-object v6, v12

    move v8, v15

    :goto_b
    move v9, v5

    move/from16 v10, v16

    :goto_c
    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_d

    :cond_11
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-boolean v6, v6, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v6, :cond_12

    const v7, 0x7f0e003a

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dq()I

    move-result v6

    add-int v8, v15, v6

    move-object v6, v12

    goto :goto_b

    :cond_12
    const v7, 0x7f0e003a

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dq()I

    move-result v6

    add-int v10, v16, v6

    move-object v6, v12

    move v8, v15

    move v9, v5

    goto :goto_c

    :goto_d
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v14, v3, v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    const v6, 0x7f0e003b

    invoke-virtual {v12, v6, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v6, 0x7f0e003d

    invoke-virtual {v12, v6, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v13

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v14, v6, v3, v13, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    const v6, 0x7f0e003c

    invoke-virtual {v12, v6, v13}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-boolean v6, v6, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-boolean v6, v6, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v6, :cond_13

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v6

    sub-int/2addr v6, v15

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v7}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v7

    sub-int/2addr v6, v7

    move v10, v6

    move v8, v15

    goto :goto_e

    :cond_13
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v6

    sub-int v6, v6, v16

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v7}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v7

    sub-int/2addr v6, v7

    move v8, v6

    move/from16 v10, v16

    :goto_e
    const v7, 0x7f0e0041

    move-object v6, v12

    move v9, v5

    move-object v14, v11

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v5, 0x7f0e0042

    invoke-virtual {v12, v5, v14}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v5, 0x7f0e0043

    invoke-virtual {v12, v5, v13}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v5, 0x7f0e0044

    invoke-virtual {v12, v5, v14}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_14
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/qsb/a;->zX:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v13, 0x7f0e0068

    if-nez v5, :cond_17

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dp()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-boolean v5, v5, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v5, :cond_15

    const v7, 0x7f0e0068

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/qsb/a;->do()I

    move-result v5

    add-int v8, v15, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_f
    const/4 v11, 0x0

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_10

    :cond_15
    const v7, 0x7f0e0068

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/qsb/a;->do()I

    move-result v5

    add-int v10, v16, v5

    goto :goto_f

    :cond_16
    :goto_10
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/qsb/a;->zX:Ljava/lang/String;

    invoke-virtual {v12, v13, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_11

    :cond_17
    const/16 v5, 0x8

    invoke-virtual {v12, v13, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_11
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const v13, 0x7f0e0040

    if-eqz v5, :cond_18

    const/4 v5, 0x4

    invoke-virtual {v12, v13, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_18
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    const v14, 0x7f0e003f

    invoke-virtual {v5, v14}, Lcom/google/android/apps/nexuslauncher/qsb/a;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v6}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getLayoutDirection()I

    move-result v6

    if-ne v6, v2, :cond_19

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v2, v5

    :goto_12
    move v10, v2

    goto :goto_13

    :cond_19
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_12

    :goto_13
    const v7, 0x7f0e003e

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    invoke-virtual {v1, v4, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput v14, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EP:I

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1a

    move v13, v3

    nop

    :cond_1a
    iput v13, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EQ:I

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->af(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    iget-boolean v3, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ay:Z

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/search/a/d;->EJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget v3, v3, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    add-int/2addr v2, v3

    :cond_1b
    iget v3, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->top:I

    iget v3, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput-object v1, v3, Lcom/google/android/apps/nexuslauncher/search/a/d;->ES:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iget v3, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->width:I

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/search/a/b;->height:I

    new-instance v4, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$e$BXT-w6DYYE2I4JD1dETiKS3s5_Y;

    invoke-direct {v4, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$e$BXT-w6DYYE2I4JD1dETiKS3s5_Y;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/e;I)V

    invoke-static {v3, v1, v4}, Lcom/android/launcher3/graphics/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    const-string v3, "preview_bitmap"

    iput-object v3, v2, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Au:Landroid/os/Bundle;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/search/a/d;->ER:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    :cond_1c
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dt()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EU:Z

    .line 147
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Ar:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dw()I

    move-result v2

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/d;->EW:I

    .line 149
    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/a/e;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/search/a/e;-><init>()V

    .line 150
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Av:Lcom/google/android/apps/nexuslauncher/search/a/d;

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/e;->EX:Lcom/google/android/apps/nexuslauncher/search/a/d;

    .line 151
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Aw:Ljava/lang/String;

    if-nez v2, :cond_1d

    const-string v0, ""

    goto :goto_14

    :cond_1d
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->Aw:Ljava/lang/String;

    :goto_14
    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/search/a/e;->EY:Ljava/lang/String;

    .line 152
    invoke-static {v1}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v0

    return-object v0
.end method
