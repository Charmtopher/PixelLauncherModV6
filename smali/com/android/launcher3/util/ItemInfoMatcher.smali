.class public abstract Lcom/android/launcher3/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofItemIds(Lcom/android/launcher3/util/LongArrayMap;Ljava/lang/Boolean;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .line 150
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$8;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher$8;-><init>(Lcom/android/launcher3/util/LongArrayMap;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .line 130
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher$6;-><init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .line 139
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$7;-><init>(Ljava/util/HashSet;)V

    return-object v0
.end method

.method public static ofUser(Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .line 110
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$4;-><init>(Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public final filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 4

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 45
    instance-of v2, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v2, :cond_1

    .line 46
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 47
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/launcher3/FolderInfo;

    if-eqz v2, :cond_4

    .line 52
    check-cast v1, Lcom/android/launcher3/FolderInfo;

    .line 53
    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    .line 54
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    goto :goto_1

    .line 59
    :cond_3
    goto :goto_0

    :cond_4
    instance-of v2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v2, :cond_5

    .line 60
    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 61
    iget-object v2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 62
    if-eqz v2, :cond_5

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_5
    goto :goto_0

    .line 67
    :cond_6
    return-object v0
.end method

.method public abstract matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
.end method
