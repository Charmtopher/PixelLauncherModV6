.class Lcom/android/launcher3/util/ItemInfoMatcher$8;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$ids:Lcom/android/launcher3/util/LongArrayMap;

.field final synthetic val$matchDefault:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/LongArrayMap;Ljava/lang/Boolean;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$8;->val$ids:Lcom/android/launcher3/util/LongArrayMap;

    iput-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$8;->val$matchDefault:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    .line 153
    iget-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$8;->val$ids:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    iget-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$8;->val$matchDefault:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/launcher3/util/LongArrayMap;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
