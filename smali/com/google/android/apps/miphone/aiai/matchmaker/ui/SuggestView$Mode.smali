.class final enum Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ws:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

.field public static final enum wt:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

.field private static final synthetic wu:[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 600
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    const-string v1, "SHOW_GLEAMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->ws:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    .line 605
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    const-string v1, "SHOW_FOCUS_ENTITIES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->wt:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    .line 598
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->ws:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->wt:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->wu:[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 598
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;
    .locals 1

    .line 598
    const-class v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;
    .locals 1

    .line 598
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->wu:[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    invoke-virtual {v0}, [Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView$Mode;

    return-object v0
.end method
