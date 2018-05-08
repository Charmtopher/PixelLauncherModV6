.class public Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;
.super Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method

.method private getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 7

    .line 141
    nop

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 145
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 146
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 145
    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 147
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 148
    if-eqz v4, :cond_0

    .line 149
    return-object v2

    .line 151
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_1
    nop

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :catch_0
    move-exception p1

    .line 155
    const-string v0, "DefaultLayoutParser"

    const-string v1, "Unable to get info about resolve results"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    return-object v2

    .line 159
    :cond_2
    return-object v4
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 5

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 167
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 168
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    return v0

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected final invalidPackageOrClass(Landroid/content/res/XmlResourceParser;)J
    .locals 6

    .line 95
    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 97
    const-string p1, "DefaultLayoutParser"

    const-string v0, "Skipping invalid <favorite> with no component or uri"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-wide v1

    .line 103
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 109
    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x10000

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 111
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 116
    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    invoke-direct {p0, v4}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 119
    if-nez p1, :cond_1

    .line 122
    const-string p1, "DefaultLayoutParser"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "No preference or single system activity found for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-wide v1

    .line 126
    :cond_1
    nop

    .line 128
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 129
    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 130
    if-nez v3, :cond_3

    .line 131
    return-wide v1

    .line 133
    :cond_3
    const/high16 v1, 0x10200000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/launcher3/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    return-wide v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v3, "DefaultLayoutParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to add meta-favorite: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return-wide v1
.end method

.method public final bridge synthetic parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    return-wide v0
.end method
