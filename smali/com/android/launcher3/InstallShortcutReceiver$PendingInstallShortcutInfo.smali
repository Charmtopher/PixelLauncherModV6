.class Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final activityInfo:Landroid/content/pm/LauncherActivityInfo;

.field final data:Landroid/content/Intent;

.field final label:Ljava/lang/String;

.field final launchIntent:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;

.field final providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 393
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 394
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 396
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 397
    iput-object p3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 400
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "appWidgetId"

    .line 401
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 402
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 343
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 344
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 346
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 347
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 348
    iput-object p3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 350
    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 351
    const-string p2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V
    .locals 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 361
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 363
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 364
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 365
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 368
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 376
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 377
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 379
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 380
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 381
    iget-object p2, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 383
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->makeIntent()Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 384
    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 385
    return-void
.end method


# virtual methods
.method public final encodeToString()Ljava/lang/String;
    .locals 6

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v3, "intent.launch"

    .line 412
    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v2, "isAppShortcut"

    .line 413
    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "userHandle"

    .line 414
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 415
    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    .line 414
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    return-object v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-eqz v0, :cond_1

    .line 420
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 421
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v3, "intent.launch"

    .line 422
    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v2, "isDeepShortcut"

    .line 423
    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "userHandle"

    .line 424
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 425
    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    .line 424
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    return-object v0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_2

    .line 430
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 431
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v3, "intent.launch"

    .line 432
    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v2, "isAppWidget"

    .line 433
    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "userHandle"

    .line 434
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 435
    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    .line 434
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    return-object v0

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 442
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 443
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 450
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/InstallShortcutReceiver;->ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 452
    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 453
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$ShortcutIconResource;

    .line 456
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 457
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "intent.launch"

    .line 458
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v5, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "name"

    .line 459
    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 460
    if-eqz v1, :cond_5

    .line 461
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 462
    const-string v4, "icon"

    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    array-length v4, v1

    .line 463
    invoke-static {v1, v2, v4, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 466
    :cond_5
    if-eqz v3, :cond_6

    .line 467
    const-string v1, "iconResource"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 468
    const-string v1, "iconResourcePackage"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 471
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    const-string v1, "InstallShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception when adding shortcut: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemInfo()Landroid/util/Pair;
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 480
    new-instance v0, Lcom/android/launcher3/AppInfo;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-object v4, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 481
    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 483
    const-string v3, ""

    iput-object v3, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    .line 484
    iget-object v3, v2, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v4, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 485
    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    .line 486
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 487
    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v1, v2, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v3, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;-><init>(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/util/Provider;)V

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-eqz v0, :cond_2

    .line 500
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 501
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v1

    .line 502
    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Z)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 503
    invoke-virtual {v1}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 504
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 507
    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 508
    new-instance v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v4, "appWidgetId"

    .line 509
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 511
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 512
    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 513
    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 514
    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 515
    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 516
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->access$300(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    .line 519
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final isLauncherActivity()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
