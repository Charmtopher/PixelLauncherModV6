.class public Lcom/android/launcher3/ShortcutInfo;
.super Lcom/android/launcher3/ItemInfoWithIcon;
.source "SourceFile"


# instance fields
.field public disabledMessage:Ljava/lang/CharSequence;

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field mInstallProgress:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/AppInfo;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 107
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 97
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 99
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 100
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 101
    iget p1, p1, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    iput p1, p0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 116
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 117
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final getDeepShortcutId()Ljava/lang/String;
    .locals 2

    .line 186
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 186
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 3

    .line 192
    invoke-super {p0}, Lcom/android/launcher3/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 193
    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0x10

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 199
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "."

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 201
    :cond_2
    return-object v0
.end method

.method public final hasPromiseIconUi()Z
    .locals 1

    .line 153
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStatusFlag(I)Z
    .locals 1

    .line 144
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Lcom/android/launcher3/ItemInfoWithIcon;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 124
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    const-string v1, "intent"

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    const-string v1, "restored"

    iget v2, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 128
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p1, Lcom/android/launcher3/util/ContentWriter;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/android/launcher3/util/ContentWriter;->mUser:Landroid/os/UserHandle;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    .line 136
    :cond_1
    return-void
.end method

.method public final setInstallProgress(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    .line 162
    iget p1, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 163
    return-void
.end method

.method public final updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 2

    .line 167
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 168
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 170
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    :cond_0
    invoke-static {p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 175
    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 176
    iget-object p2, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 177
    iget p2, p0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/lit8 p2, p2, -0x11

    iput p2, p0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    goto :goto_0

    .line 179
    :cond_1
    iget p2, p0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 181
    :goto_0
    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    .line 182
    return-void
.end method
