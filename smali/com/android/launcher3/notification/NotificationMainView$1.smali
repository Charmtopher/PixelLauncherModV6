.class Lcom/android/launcher3/notification/NotificationMainView$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationMainView;->access$000(Lcom/android/launcher3/notification/NotificationMainView;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/notification/NotificationMainView;->setContentTranslation(F)V

    return-void
.end method
