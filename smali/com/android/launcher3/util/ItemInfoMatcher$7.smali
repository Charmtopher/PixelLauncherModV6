.class Lcom/android/launcher3/util/ItemInfoMatcher$7;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$keys:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$7;->val$keys:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    .line 142
    iget p2, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$7;->val$keys:Ljava/util/HashSet;

    .line 143
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 142
    return p1
.end method
